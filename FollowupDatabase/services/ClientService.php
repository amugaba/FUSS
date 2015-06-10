<?php

/**
 * Service to access Client information.
 * This is also called by the daily update overdue clients event.
 * 
 */

include_once 'ClientVO.php';
include_once 'ConnectionManager.php';

class ClientService

{    
    public $tablename = "clients";
    public $connection;

    public function __construct ()
    {
    	$cm = new ConnectionManager();

        $this->connection = mysqli_connect($cm->server, $cm->username,
        $cm->password, $cm->databasename, $cm->port);

        $this->throwExceptionOnError($this->connection);
    }
    
	/**
	 * 
	 * Get all clients with their intake and appointment dates
	 * 
	 * @return ClientVO[]
	 */
    
    public function getClientsSummary ()
    {
    	//First just select client
        $stmt = $this->connection->prepare("SELECT
        	client_id, wits_id, client_status, bhs, facility FROM clients");
        $this->throwExceptionOnError();
        
        $stmt->execute();
        $this->throwExceptionOnError();

        $rows = array();
        $row = new ClientVO();
        
        $stmt->bind_result($row->client_id, $row->wits_id, $row->client_status, $row->bhs, $row->facility);

        while ($stmt->fetch()) 
        {
            $rows[] = $row;
            $row = new ClientVO();
            $stmt->bind_result($row->client_id, $row->wits_id, $row->client_status, $row->bhs, $row->facility);
        }

        $stmt->free_result();
        
        //Now select all intakes and appointments for each client
        foreach($rows as $client)
        {
        	$stmt = $this->connection->prepare("SELECT targetdate
           		FROM events i WHERE $client->client_id = i.client_id AND i.type = 'Intake'");
        	$this->throwExceptionOnError();
        	
        	$stmt->execute();
        	$this->throwExceptionOnError();

        	$intake = "";
        	$stmt->bind_result($intake);
        	
        	$oldestIntake = null;
	        while ($stmt->fetch()) 
	        {
	        	if($oldestIntake == null || strtotime($intake) < strtotime($oldestIntake))
	        		$oldestIntake = $intake;
	
	            $stmt->bind_result($intake);
	        }
	        
	        $stmt->free_result();
	        
        	$stmt = $this->connection->prepare("SELECT targetdate
           		FROM events a WHERE $client->client_id = a.client_id AND a.type = 'Appointment'");
        	$this->throwExceptionOnError();
        	
        	$stmt->execute();
        	$this->throwExceptionOnError();

        	$appointment = "";
        	$stmt->bind_result($appointment);
        	
        	$newestAppointment = null;
	        while ($stmt->fetch()) 
	        {
	        	if($newestAppointment == null || strtotime($appointment) > strtotime($newestAppointment))
	        		$newestAppointment = $appointment;
	
	            $stmt->bind_result($appointment);
	        }
	        
	        $stmt->free_result();
	        
	        $client->intakeDate = $oldestIntake;
	        $client->appointmentDate = $newestAppointment;
        }

        $this->connection->close();

        return $rows;
    }
    
	/**
	 * 
	 * Get all clients matching the search criteria
	 * 
	 * @param string $witsID
	 * @param string $statuses
	 * @param string $bhs
	 * @param string $facility
	 * @return ClientVO[]
	 */
    
    public function searchClients ($witsID, $statuses, $bhs, $facility)
    {
    	$attentionQuery = "";
    	if(strpos($statuses, "Overdue") !== false)
    		$attentionQuery = " OR attention = 1";
    	
    	$witsQuery = "";
		if(strlen($witsID) > 0)
			$witsQuery = "LOCATE(?,wits_id) > 0 AND ";
			
		$bhsQuery = "";
		if(strlen($bhs) > 0)
			$bhsQuery = "bhs=? AND ";
			
		$facilityQuery = "";
		if(strlen($facility) > 0)
			$facilityQuery = "facility=? AND ";
		
		
        $stmt = $this->connection->prepare("SELECT 
        	client_id, wits_id, client_status, attention, flagged, bhs, facility
        	FROM clients WHERE " .$witsQuery.$bhsQuery.$facilityQuery. "(client_status IN ($statuses)" .$attentionQuery.")");		
        $this->throwExceptionOnError();

        
        //$stmt->bind_param('ssi', $witsID, mysqli_real_escape_string($this->connection,$statuses), $overdue);
        if(strlen($witsID) > 0)
        {
        	if(strlen($bhs) > 0)
        	{
        		if(strlen($facility) > 0)
        			$stmt->bind_param('sss', $witsID, $bhs, $facility);
        		else
        			$stmt->bind_param('ss', $witsID, $bhs);
        	}
        	else
        	{
        		if(strlen($facility) > 0)
        			$stmt->bind_param('ss', $witsID, $facility);
        		else
        			$stmt->bind_param('s', $witsID);
        	}
        }
        else
        {
            if(strlen($bhs) > 0)
        	{
        		if(strlen($facility) > 0)
        			$stmt->bind_param('ss', $bhs, $facility);
        		else
        			$stmt->bind_param('s', $bhs);
        	}
        	else
        	{
        		if(strlen($facility) > 0)
        			$stmt->bind_param('s', $facility);
        	}
        }
        
		$this->throwExceptionOnError();

        $stmt->execute();
        $this->throwExceptionOnError();

        $rows = array();
        $row = new ClientVO();
        
        $stmt->bind_result($row->client_id, $row->wits_id, $row->client_status, $row->attention, $row->flagged, $row->bhs, $row->facility);

        while ($stmt->fetch()) 
        {
            $rows[] = $row;
            $row = new ClientVO();

            $stmt->bind_result($row->client_id, $row->wits_id, $row->client_status, $row->attention, $row->flagged, $row->bhs, $row->facility);
        }        
        
        $stmt->free_result();
        $this->connection->close();

        return $rows;
    }

	/**
	 * 
	 * Get a single client by ID
	 * 
	 * @param int $clientID
	 * @return ClientVO
	 */
    public function getClientByID ($clientID)
    {
        $stmt = mysqli_prepare($this->connection, "SELECT

              client_id, wits_id, client_status, attention, notes, flagged, bhs, facility

           FROM clients where client_id=?");
        $this->throwExceptionOnError();

        $stmt->bind_param('i', $clientID);
        $this->throwExceptionOnError();

        $stmt->execute();
        $this->throwExceptionOnError();

        $obj = new ClientVO();

        $stmt->bind_result($row->client_id, $row->wits_id, $row->client_status,
        $row->attention, $row->notes, $row->flagged, $row->bhs, $row->facility);

        if ($stmt->fetch()) {
            $obj = $row;
        }

        mysqli_stmt_free_result($stmt);
        
        $rs = mysqli_query($this->connection, "SELECT event_id FROM events WHERE client_id = " . mysqli_real_escape_string($this->connection,$clientID));
        $this->throwExceptionOnError();
        
        $events = array();
        while($eventObj = mysqli_fetch_object($rs))
        {
        	array_push($events, $eventObj->event_id);
        }
        $obj->events = $events;

        $stmt->free_result();
        $this->connection->close();
        
        return $obj;

    }

	/**
	 * 
	 * Create a client
	 * 
	 * @param ClientVO $item
	 * @return int
	 */
    public function createClient ($item)
    {       
        $stmt = $this->connection->prepare("INSERT IGNORE INTO clients 
        (wits_id, client_status, attention, notes, flagged, bhs, facility)
        VALUES (?, ?, ?, ?, ?, ?, ?)");
        $this->throwExceptionOnError();

        $stmt->bind_param('ssisiss', $item->wits_id, $item->client_status, 
        $item->attention, $item->notes, $item->flagged, $item->bhs, $item->facility);
        $this->throwExceptionOnError();

        $rs = $stmt->execute();
        $this->throwExceptionOnError();

        $autoid = $stmt->insert_id;
        
        $stmt->free_result();
        $this->connection->close();
        
        return $autoid; 
    }

	/**
	 * 
	 * Delete a client
	 * 
	 * @param int $itemID
	 * @return bool
	 */
    public function deleteClient ($itemID)
    {

        $stmt = $this->connection->prepare("DELETE FROM clients WHERE client_id = ?");
        $this->throwExceptionOnError();

        $stmt->bind_param('i', $itemID);

        $deleted = $stmt->execute();
        $this->throwExceptionOnError();

        $stmt->free_result();
        
        $stmt = $this->connection->prepare("DELETE FROM events WHERE client_id = ?");
        $this->throwExceptionOnError();

        $stmt->bind_param('i', $itemID);

        $deleted = $stmt->execute();
        $this->throwExceptionOnError();

        $stmt->free_result();
        $this->connection->close();
        return $deleted;
    }

	/**
	 * 
	 * Update a client with new information 
	 * 
	 * @param ClientVO $item
	 * @return ClientVO
	 */
    public function updateClient ($item)
    {

        $stmt = $this->connection->prepare("UPDATE clients SET
        wits_id=?, client_status=?, attention=?, notes=?, flagged=?, bhs=?, facility=?
        WHERE client_id=?");
        $this->throwExceptionOnError();

        $stmt->bind_param('ssisissi', $item->wits_id,
        $item->client_status, $item->attention, $item->notes, $item->flagged, $item->bhs, $item->facility,
        $item->client_id);
        $this->throwExceptionOnError();

        $rs = $stmt->execute();
        $this->throwExceptionOnError();

        $stmt->free_result();
        $this->connection->close();
        
        return $rs;
    }
    
	/**
	 * 
	 * Update overdue status of a client and its events
	 * 
	 * @param int $clientID
	 * @return bool
	 */
    public function getClientOverdue ($clientID)
    {
        $rs = mysqli_query($this->connection, "SELECT event_id, targetdate, status, attention FROM events WHERE client_id = " . mysqli_real_escape_string($this->connection,$clientID));
        $this->throwExceptionOnError();

        $overdue = false;
        $newOverdue = false;
        while($eventObj = mysqli_fetch_object($rs))
        {
        	if($eventObj->status != "Active")
        	{
        		if($eventObj->attention == 1)
        			mysqli_query($this->connection, "UPDATE events SET attention=0 WHERE event_id = " . $eventObj->event_id);
        	}
        	else if(strtotime($eventObj->targetdate) < strtotime('now'))
        	{
        		$overdue = true;
        		if($eventObj->attention == 0)
        		{
        			$newOverdue = true;
        			mysqli_query($this->connection, "UPDATE events SET attention=1 WHERE event_id = " . $eventObj->event_id);
        		}        		
        	}
        	else if($eventObj->attention == 1)
        		mysqli_query($this->connection, "UPDATE events SET attention=0 WHERE event_id = " . $eventObj->event_id);
        }
        
        $rs = mysqli_query($this->connection, "SELECT client_status FROM clients WHERE client_id = " . mysqli_real_escape_string($this->connection,$clientID));
        
        $clientStatus = mysqli_fetch_object($rs)->client_status;
        if($overdue && ($clientStatus == "Active" || $clientStatus == "Referral"))
        {
        	mysqli_query($this->connection, "UPDATE clients SET attention=1 WHERE client_id = " . mysqli_real_escape_string($this->connection,$clientID));
        }
        else mysqli_query($this->connection, "UPDATE clients SET attention=0 WHERE client_id = " . mysqli_real_escape_string($this->connection,$clientID));

        //$this->connection->close();
        return $overdue;
    }

    /**

     * Utitity function to throw an exception if an error occurs

     * while running a mysql command.

     */

    private function throwExceptionOnError ($link = null)

    {

        if ($link == null) {

            $link = $this->connection;

        }

        if (mysqli_error($link)) {

            $msg = mysqli_errno($link) . ": " . mysqli_error($link);

            throw new Exception('MySQL Error - ' . $msg);

        }

    }

}