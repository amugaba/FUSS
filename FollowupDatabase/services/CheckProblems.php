<?php
    include('ClientService.php');
    include('EventService.php');
    
    $c = new ClientService();
    $clients = $c->getClientsSummary();
    
    $problemList = "<div>";
    $inactive = "No active events on an active client.<br />\n\n";
    $noappt = "No appointment scheduled.<br />\n\n";
    $nointake = "No intake recorded.<br />\n\n";
    $toosoon = "Appointment scheduled earlier than 5 months.<br />\n\n";
    $toolate = "Appointment scheduled after than 8 months.<br />\n\n";
    $noappt_critical = "CRITICAL: No appointment AND less than 3 months left.<br />\n\n";
    
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
    		$problemList .= $client[1] . ": " . $inactive;
    	if($apptDate == 0)
      {
        if((strtotime("now") - $intakeDate)/(24*60*60) > 150)
            $problemList .= $client[1] . ": " . $noappt_critical;
        else
    		    $problemList .= $client[1] . ": " . $noappt;
   		}
    	if($intakeDate == 0)
    		$problemList .= $client[1] . ": " . $nointake;
    	
    	if($intakeDate != 0 && $apptDate != 0)
    	{
    		$daysToAppt = ($apptDate - $intakeDate)/(24*60*60);
    		if($daysToAppt < 150)
    			$problemList .= $client[1] . ": " . $toosoon;
    		if($daysToAppt > 240)
    			$problemList .= $client[1] . ": " . $toolate;
    	}

    }
    $problemList .= "</div>";

    echo $problemList;
?> 
