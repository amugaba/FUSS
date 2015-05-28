<?php

include_once 'EventVO.php';
include_once 'ConnectionManager.php';

/**
 *  Service to access Event data.
 *
 */
class EventService
{
	var $tablename = "events";
	var $connection;

	public function __construct ()
    {
    	$cm = new ConnectionManager();

        $this->connection = mysqli_connect($cm->server, $cm->username,
        $cm->password, $cm->databasename, $cm->port);

        $this->throwExceptionOnError($this->connection);
    }

	/**
	 * Get all Events for all Clients.
	 *
	 * @return EventVO[]
	 */
	public function getAllEvents() {

		$stmt = mysqli_prepare($this->connection, "SELECT * FROM $this->tablename");		
		$this->throwExceptionOnError();
		
		mysqli_stmt_execute($stmt);
		$this->throwExceptionOnError();
		
		$rows = array();
		$row = new EventVO();
		
		mysqli_stmt_bind_result($stmt, $row->event_id, $row->client_id, $row->type, $row->targetdate, $row->status, $row->attention, $row->notes, $row->flagged);
		
	    while (mysqli_stmt_fetch($stmt)) {
	      $rows[] = $row;
	      $row = new EventVO();
	      mysqli_stmt_bind_result($stmt, $row->event_id, $row->client_id, $row->type, $row->targetdate, $row->status, $row->attention, $row->notes, $row->flagged);
	    }
		
		mysqli_stmt_free_result($stmt);
	    mysqli_close($this->connection);
	
	    return $rows;
	}


	/**
	 * Get all Events for a single Client.
	 *
	 * @param int $clientID
	 * @return EventVO[]
	 */
	public function getEventsByID($clientID) {
		
		$stmt = mysqli_prepare($this->connection, "SELECT * FROM $this->tablename where client_id=?");
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_param($stmt, 'i', $clientID);		
		$this->throwExceptionOnError();
		
		mysqli_stmt_execute($stmt);
		$this->throwExceptionOnError();
		
		$rows = array();
		$row = new EventVO();
		mysqli_stmt_bind_result($stmt, $row->event_id, $row->client_id, $row->type, $row->targetdate, $row->status, $row->attention, $row->notes, $row->flagged);
		
		while (mysqli_stmt_fetch($stmt)) {
	      $rows[] = $row;
	      $row = new EventVO();
	      mysqli_stmt_bind_result($stmt, $row->event_id, $row->client_id, $row->type, $row->targetdate, $row->status, $row->attention, $row->notes, $row->flagged);
	    }
		
		mysqli_stmt_free_result($stmt);
	    mysqli_close($this->connection);
	
	    return $rows;
	}

	/**
	 * Get one Event by its ID. 
	 *
	 * @param int $eventID
	 * @return EventVO
	 */
	public function getEventByEventID($eventID) {
		
		$stmt = mysqli_prepare($this->connection, "SELECT * FROM $this->tablename where event_id=?");
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_param($stmt, 'i', $eventID);		
		$this->throwExceptionOnError();
		
		mysqli_stmt_execute($stmt);
		$this->throwExceptionOnError();
		
		$row = new EventVO();
		mysqli_stmt_bind_result($stmt, $row->event_id, $row->client_id, $row->type, $row->targetdate, $row->status, $row->attention, $row->notes, $row->flagged);
		
	    if (!$stmt->fetch())
	    	$row = NULL;
		
		mysqli_stmt_free_result($stmt);
	    mysqli_close($this->connection);
	
	    return $row;
	}
	
	/**
	 * Create a new Event and return its ID.
	 *
	 * @param EventVO $item
	 * @return int
	 */
	public function createEvent($item) {

		$stmt = mysqli_prepare($this->connection, "INSERT INTO $this->tablename (client_id, type, targetdate, status, attention, notes, flagged) VALUES (?, ?, ?, ?, ?, ?, ?)");
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_param($stmt, 'isssisi', $item->client_id, $item->type, $item->targetdate, $item->status, $item->attention, $item->notes, $item->flagged);
		$this->throwExceptionOnError();

		mysqli_stmt_execute($stmt);		
		$this->throwExceptionOnError();

		$autoid = mysqli_stmt_insert_id($stmt);

		mysqli_stmt_free_result($stmt);		
		mysqli_close($this->connection);

		return $autoid;
	}

	/**
	 * Update an Event's data.
	 *
	 * @param EventVO $item
	 * @return void
	 */
	public function updateEvent($item) {
	
		$stmt = mysqli_prepare($this->connection, "UPDATE $this->tablename SET client_id=?, type=?, targetdate=?, status=?, attention=?, notes=?, flagged=? WHERE event_id=?");		
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_param($stmt, 'isssisii', $item->client_id, $item->type, $item->targetdate, $item->status, $item->attention, $item->notes, $item->flagged, $item->event_id);		
		$this->throwExceptionOnError();

		mysqli_stmt_execute($stmt);		
		$this->throwExceptionOnError();
		
		mysqli_stmt_free_result($stmt);		
		mysqli_close($this->connection);
	}

	/**
	 * Delete an Event.
	 *
	 * @param EventVO $item
	 * @return void
	 */
	public function deleteEvent($item) {
				
		$stmt = mysqli_prepare($this->connection, "DELETE FROM $this->tablename WHERE event_id = ?");
		$this->throwExceptionOnError();
		
		mysqli_stmt_bind_param($stmt, 'i', $item->event_id);
		mysqli_stmt_execute($stmt);
		$this->throwExceptionOnError();
		
		mysqli_stmt_free_result($stmt);		
		mysqli_close($this->connection);
	}	
	
	/**
	 * Utility function to throw an exception if an error occurs 
	 * while running a mysql command.
	 */
	private function throwExceptionOnError($link = null) {
		if($link == null) {
			$link = $this->connection;
		}
		if(mysqli_error($link)) {
			$msg = mysqli_errno($link) . ": " . mysqli_error($link);
			throw new Exception('MySQL Error - '. $msg);
		}		
	}
}

?>
