<?php
	/**
	 * Mail Helper class
	 */

require_once('PHPMailerAutoload.php');

class MailHelper
{
	private $mail;
	
    public function __construct ($subject)
    {
		$mail = new PHPMailer();

		$mail->IsSMTP();                       // telling the class to use SMTP
		
		$mail->SMTPDebug = 0;                  
		// 0 = no output, 1 = errors and messages, 2 = messages only.
		
		$mail->SMTPAuth = true;                // enable SMTP authentication
		$mail->SMTPSecure = "tls";              // sets the prefix to the servier
		$mail->Host = "smtp.gmail.com";        // sets Gmail as the SMTP server
		$mail->Port = 587;                     // set the SMTP port for the GMAIL
		
		$mail->Username = 'sbirtfollowup@gmail.com';  // Gmail username
		$mail->Password = 'poiu0897';      // Gmail password
		
		$mail->CharSet = 'windows-1250';
		$mail->SetFrom ('sbirtfollowup@gmail.com', 'SBIRT Followup System');
		$mail->Subject = $subject;
		$mail->ContentType = 'text/plain';
		$mail->IsHTML(true);
		
		$this->mail = $mail;
    }
    
    public function setBody($body)
    {
    	$this->mail->Body = $body;
    }
    
    public function sendMail($address, $toName)
    {
    	$this->mail->ClearAddresses();
    	$this->mail->AddAddress ($address, $toName);     
		return $this->mail->Send();
    }
}
?>