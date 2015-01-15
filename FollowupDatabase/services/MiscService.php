<?php
include_once 'DefaultEventVO.php';
include_once 'ClientService.php';
include_once 'EventService.php';
include_once 'ConnectionManager.php';

/**
 * Service to access facilities, default events, and generate error report.
 * 
 */

class MiscService

{
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
	 * Get facilities
	 * 
	 * @return String[]
	 */
    public function getFacilities()
    {
    	$stmt = $this->connection->prepare("SELECT name FROM facilities");
    	$this->throwExceptionOnError();
    	
    	$stmt->execute();
    	$this->throwExceptionOnError();
    	
    	$facilities = array();
    	
    	$s = "";
    	$stmt->bind_result($s);
    	
    	while ($stmt->fetch()) 
    	{
    		$facilities[] = $s;
    		$stmt->bind_result($s);
        }
    	
    	mysqli_stmt_free_result($stmt);
        mysqli_close($this->connection);
        
        return $facilities;
    }
    
    /**
	 * 
	 * Get default event parameters
	 * 
	 * @return DefaultEventVO[]
	 */
    public function getDefaultEvents()
    {
    	$stmt = $this->connection->prepare("SELECT type, offset, note FROM default_events");
    	$this->throwExceptionOnError();
    	
    	$stmt->execute();
    	$this->throwExceptionOnError();
    	
    	$defaults = array();
    	
		$obj = new DefaultEventVO();
    	$stmt->bind_result($obj->type, $obj->offset, $obj->note);
    	
    	while ($stmt->fetch()) 
    	{
    		$defaults[] = $obj;
    		$obj = new DefaultEventVO();
    		$stmt->bind_result($obj->type, $obj->offset, $obj->note);
        }
    	
    	mysqli_stmt_free_result($stmt);
        mysqli_close($this->connection);
        
        return $defaults;
    }
    
	/**
	 * 
	 * Get a list of problems
	 * 
	 * @return String[]
	 */
    public function checkProblems()
    {
    	$c = new ClientService();
	    $clients = $c->getClientsSummary();
	    
	    $problemList = array();
	    $inactive = "No active events on an active client.";
	    $noappt = "No appointment scheduled.";
	    $nointake = "No intake recorded.";
	    $toosoon = "Appointment scheduled earlier than 5 months.";
	    $toolate = "Appointment scheduled after than 8 months.";
	    $noappt_critical = "CRITICAL: No appointment AND less than 3 months left.";
	    
	    foreach ($clients as $client)
	    {
	    	if($client[2] != "Active")
	    		continue;
	    		
	    	$intakeDate = 0;
	    	$apptDate = 0;
	    	$active = false;
	    	
	    	$e = new EventService();
	    	$events = $e->getEventsByID($client[0]);
	    	
	    	foreach ($events as $event)
	    	{
	    		if($event->type == "Intake")
	    			$intakeDate = $event->targetdate;
	    		if($event->type == "Appointment")
	    			$apptDate = $event->targetdate;
	    		if($event->status == "Active")
	    			$active = true;
	    	}
	    	
	    	if(!$active)
	    		array_push($problemList, $client[1] . ": " . $inactive);
	    	if($apptDate == 0)
	      {
	        if((strtotime("now") - $intakeDate)/(24*60*60) > 150)
	            array_push($problemList, $client[1] . ": " . $noappt_critical);
	        else
	    		array_push($problemList, $client[1] . ": " . $noappt);
	   		}
	    	if($intakeDate == 0)
	    		array_push($problemList, $client[1] . ": " . $nointake);
	    	
	    	if($intakeDate != 0 && $apptDate != 0)
	    	{
	    		$daysToAppt = ($apptDate - $intakeDate)/(24*60*60);
	    		if($daysToAppt < 150)
	    			array_push($problemList, $client[1] . ": " . $toosoon);
	    		if($daysToAppt > 240)
	    			array_push($problemList, $client[1] . ": " . $toolate);
	    	}
	    }
	
	    return $problemList;
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