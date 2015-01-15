<?php
class EventVO
{
	/**
	 * @var int
	 */
	public $event_id;
	
	/**
	 * @var int
	 */
	public $client_id;
	
	/**
	 * @var string
	 */
	public $type;
	
	/**
	 * @var int
	 */
	public $targetdate;
	
	/**
	 * @var string
	 */
	public $status;
	
	/**
	 * @var bool
	 */
	public $attention;
	
	/**
	 * @var string
	 */
	public $notes;
	
	/**
	 * @var bool
	 */
	public $flagged;
	
	public function __construct()
	{
		$this->event_id = 0;
		$this->client_id = 0;
		$this->type = "";
		$this->targetdate = 0;
		$this->status = "Active";
		$this->attention = FALSE;
		$this->notes = "";
		$this->flagged = FALSE;	
	}
}
?>