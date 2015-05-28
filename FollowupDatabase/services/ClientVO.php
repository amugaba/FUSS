<?php
class ClientVO
{
	/**
	 * @var int
	 */
	public $client_id;
	
	/**
	 * @var string
	 */
	public $wits_id;
	
	/**
	 * @var string
	 */
	public $client_status;
	
	/**
	 * @var string
	 */
	public $intakeDate;
	
	/**
	 * @var string
	 */
	public $appointmentDate;
	
	/**
	 * @var bool
	 */
	public $attention;
	
	/**
	 * @var array
	 */
	public $events;
	
	/**
	 * @var string
	 */
	public $notes;
	
	/**
	 * @var bool
	 */
	public $flagged;
	
	/**
	 * @var string
	 */
	public $bhs;
	
	/**
	 * @var string
	 */
	public $facility;
	
	public function __construct()
	{
		$this->client_id = 0;
		$this->wits_id = "";
		$this->client_status = "Active";
		$this->intakeDate = "";
		$this->attention = FALSE;
		$this->events = array();
		$this->notes = "";
		$this->flagged = FALSE;
		$this->bhs = "ZZ";
		$this->facility = "Unknown";
	}
}
?>