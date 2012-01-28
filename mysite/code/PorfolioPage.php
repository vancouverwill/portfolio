<?php
class PortfolioPage extends Page {

	public static $db = array();

	public static $has_one = array();

	public static $has_many = array('portfolioProjects' => 'Project');

	function getCMSFields() {

		$portfolioFields = parent::getCMSFields();

		/*$projectfield = new DataObjectManager(
		 $this,					// Controller
		 'Projects',				// Source name
		 'Project',				// Source class
		 //'Attachment', 			// File name on DataObject
		 array('Name' => 'Name', 'MyClientName'=>'MyClientName',  'SiteURL' => 'SiteURL','IsActive' => 'Status', 'IsFeaturedProjectImage' =>'FeaturedProject'),
		 'getProjectCMSFields_forPopup'
		 );
		 $projectfield->addPermission("duplicate");
		 //$projectfield->removePermission("delete");
		 $projectfield->setColumnWidths(array(
		 'IsActive' => 10,
		 'IsFeaturedProjectImage' => 10,
		 'Name'=> 20,
		 'MyClientName'=> 40,
		 'SiteURL'=> 20
		 ));*/

		$tablefield = new DataObjectManager($this, 'portfolioProjects', 'Project',
		//array('Type' => 'Name'),
		'',
		//'getTechnologySubCategoryCMSFields_forPopup'
		''
		//, new RequiredFields('Type')
		);

		//$tablefield->removePermission("delete");

		$portfolioFields -> addFieldToTab('Root.Content.PorfolioProjects', $tablefield);

		$tablefield = new DataObjectManager($this, 
		'popUps', 
		'ProjectPopUp',
		array(
		'PopUpTitle' => 'PopupName',
		'ParentProject' => 'ParentProject.Name'
		),
		'getCMSFields_forPopup');
		// $tablefield->setParentClass('Project');

		$portfolioFields -> addFieldToTab('Root.Content.PopUps', $tablefield);

		return $portfolioFields;
	}

}

class PortfolioPage_Controller extends Page_Controller {

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

		
	}

}
