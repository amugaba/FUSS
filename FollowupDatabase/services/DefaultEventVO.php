<?php
class DefaultEventVO
{
	/**
	 * @var string
	 */
	public $type;
	
	/**
	 * @var int
	 */
	public $offset;
	
	/**
	 * @var string
	 */
	public $note;
	

	public function __construct()
	{
		$this->type = "";
		$this->offset = 0;
		$this->note = "";

	}
}
?>