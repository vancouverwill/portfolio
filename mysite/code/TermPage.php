<?php
class TermPage extends Page{
	
	
	public static $db = array (
		'TermCommandOrder' => 'Text'
	);
	
	static $defaults = array(
	    "TermCommandOrder" => 'ASC',
	);
	
	public static $has_many = array(
		'Terms' => 'Term'
	);
	
	function getCMSFields()
	{
	
		$fields = parent::getCMSFields();
		
		
		$tablefield = new DataObjectManager(
		//$tablefield = new ComplexTableField(
		$this,					// Controller
					 'Terms',				// Source name
					 'Term',				// Source class
		array(
		
				'TermCommand' => 'Term Command',
				'Example' => 'Example',
				'TermDescription' => 'Term Description',
		),
					 'getTerms_forPopup'
		);
		
		$tablefield->setPermissions(array('show','edit', 'add', 'delete')) ;
		$fields->addFieldToTab( 'Root.Content.Terms', $tablefield );
			
		return $fields;
	}
	
public function sortCommand2() {
		
		Debug::show('werwer'.$this->TermCommand);
		$SortedTerms = DataObject::get($obj = 'Term' , $filter = '', $sort = 'TermCommand DESC', $join = '', $limit = '2');
		
		//return our $Terms array to use on the page
		return $this->customise(array('Terms' => $SortedTerms));
		//return $this;
		//return $this->Customise($Terms->sort())
	}
}

class TermPage_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array('sortCommand');

	public function init() {
		 //add a javascript library for easy interaction with the server
		  //Requirements::javascript('mysite/javascript/jQuery.js');
		  //if(Director::is_ajax() || $_GET["ajaxDebug"]) {
		 /* if	(Director::is_ajax()) {
		   	$this->isAjax = true;
		  }
		  else {
		   	$this->isAjax = false;
		  } */
		  parent::init();


		Requirements::themedCSS("termPage.css");
	}
	
	public static $commandVar;
	
	public function sortCommandASC() {
		
		/*$this->commandVar = 'sdf';
		
		
		if($this->commandVar == 'DESC')
			{ $this->commandVar = 'ASC';}
		else 
			{ $this->commandVar = 'DESC'; }
			*/
			Debug::show('werwer'.$this->commandVar);
		$SortedTerms = DataObject::get($obj = 'Term' , $filter = '', $sort = 'TermCommand DESC', $join = '', $limit = '4');
		
		//return our $Terms array to use on the page
		return $this->customise(array('Terms' => $SortedTerms));
		//return $this;
		//return $this->Customise($Terms->sort())
	}
	
	public function sortCommand() {
		
		//Debug::show(Director::URLParam('ID'));
		//Debug::show(Director::URLParam('OtherID'));
		
		//$this->commandVar = 'sdf';
		
		
		/*if(TermPage_Controller::$commandVar == 'DESC')
		{
			TermPage_Controller::$commandVar = 'ASC';
		}
		else
			{ TermPage_Controller::$commandVar = 'DESC';
			}*/
			
		if (( Director::URLParam('ID') != '') &&  ( Director::URLParam('OtherID') != '')){
			//Term::$default_sort = "TermDescription ASC";
			Term::$default_sort = Director::URLParam('ID') . " " . Director::URLParam('OtherID');
		}
			
		//if($this->isAjax) {
		if(Director::is_ajax())	{
			//return "your product (# productNumber) has been added";
			return $this->renderWith("ajaxSnippet");
				
		}
		else 
		{
	//		Debug::show($this->commandVar);
			//Debug::show('commandvAr - '.TermPage_Controller::$commandVar);
			
			return $this;
			//return $this->renderWith("ajaxSnippet");
		}
	}

}