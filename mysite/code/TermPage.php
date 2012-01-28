<?php
class TermPage extends Page{
	
	
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
	public static $allowed_actions = array();

	public function init() {
		parent::init();


		Requirements::themedCSS("termPage.css");
	}

}