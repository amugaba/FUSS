<?php
	/**
	 * Daily event to calculate which events and clients are overdue.
	 * This should be run as a scheduled event on your server.
	 * 
	 * In order to send email reminders, you must create an email account
	 * FROM which to send the reminders. Set the connection info for the 
	 * email account below (i.e. replace all instances of EXAMPLE with
	 * actual info).
	 */

include_once('ClientService.php');
include_once('EventService.php');
include_once('UserService.php');
require_once 'MailHelper.php';

	//Get user email addresses
	$u = new UserService();
	$users = $u->getUsers();
	$emailList = array();
	
	foreach($users as $user)
	{
		$emailList[$user->initials] = $user->email;
	}
	
	//Get client list
    $c = new ClientService();
    $clients = $c->getClientsSummary();
    
    $c = new ClientService();
    $lindaList = "";
    $donnaList = "";
    
    //Check if client is newly overdue, if so, send an email to user
    //Create separate lists for Donna and Linda
    foreach ($clients as $client)
    {
    	if($c->getClientOverdue(intval($client->client_id)))
    	{
		if($client->bhs == "DR")
	    		$donnaList .= '<p>'.$client->wits_id.'</p>';
		else
	    		$lindaList .= '<p>'.$client->wits_id.'</p>';
    	}
    }

	$c->connection->close();

//Generate two emails
$mailer = new MailHelper('SBIRT Followup System: Event Due');

$mailer->setBody('<p><b>A followup event is due for the following clients:</b></p>'.$lindaList);
$mailer->sendMail('linda.swick-ice@eskenazihealth.edu','Linda Swick-Ice');

$mailer->setBody('<p><b>A followup event is due for the following clients:</b></p>'.$donnaList);
$mailer->sendMail('donna.rowe@eskenazihealth.edu','Donna Rowe');
?> 
