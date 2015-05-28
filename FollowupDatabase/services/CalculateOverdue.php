<?php
	include('ClientService.php');
	include('EventService.php');
	include('UserService.php');
	require_once('Zend/Mail/Transport/Smtp.php');
	require_once 'Zend/Mail.php';
	
	/**
	 * Daily event to calculate which events and clients are overdue.
	 * This should be run as a scheduled event on your server.
	 * 
	 * In order to send email reminders, you must create an email account
	 * FROM which to send the reminders. Set the connection info for the 
	 * email account below (i.e. replace all instances of EXAMPLE with
	 * actual info).
	 */
	
	//Setting used to send mail to user
	//Your email provider can provide this information
	$config = array('auth' => 'login',
                'username' => 'EXAMPLE@EXAMPLE.com',
                'password' => 'EXAMPLE',
    			'port'     => 9999,
                'ssl' => 'PUT_ssl_OR_tls');

	$transport = new Zend_Mail_Transport_Smtp('smtp.EXAMPLE.com', $config); //for example 'smtp.gmail.com'
    
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
    $overdueList = array();
    
    //Check if client is newly overdue, if so, send an email to user
    foreach ($clients as $client)
    {
    	if($c->getClientOverdue(intval($client->client_id)))
    	{
    		array_push($overdueList, $client->wits_id);
    	}
    }
    $c->connection->close();
    
    if(count($overdueList) > 0)
    {
    	$mail = new Zend_Mail();
	    $mail->setBodyText('A followup event is due for the following clients: '.implode(' ', $overdueList));
	    $mail->setFrom('EXAMPLE@EXAMPLE.com', 'Follow-Up Support System');
	    //If emails should go to more than one person, an alternative version of this file is needed
	    $mail->addTo('DESTINATION@EXAMPLE.com', 'BHS'); //this should be the person who receives the email reminder
	    $mail->setSubject('Follow-Up Support System: Event Due');
	    $mail->send($transport);
    }   
?> 
