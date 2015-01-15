<?php
class ClientSummaryVO
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
	
	public $intakeDate;
	public $appointmentDate;
	
	public function __construct()
	{
		$this->client_id = 0;
		$this->wits_id = "";
		$this->client_status = "Active";
		$this->attention = FALSE;
		$this->events = array();
		$this->notes = "";
		$this->flagged = FALSE;
		$this->bhs = "ZZ";
		$this->facility = "Unknown";
		$this->intakeDate = "";
		$this->appointmentDate = "";
	}
}
?>