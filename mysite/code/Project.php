<?php
class Project extends DataObject {

	public static $db = array(
		'Name' => 'Text',
		'Website' => 'Text'
	);

	public static $has_one = array(
	'ParentPortfolioPage' => 'PortfolioPage',
	'ProjectPhoto' => 'Image',
	);
	
	
	public static $has_many = array(
	'popUps' => 'ProjectPopUp'
	);
	
	function getCMSFields_forPopup() {
        $fields = new FieldSet();
         
        //$fields->push( new TextField( 'FirstName', 'First Name' ) );
        $fields->push( new TextField( 'Name' ) );
        $fields->push( new TextField( 'Website' ) );
		$fields->push( new ImageUploadField('ProjectPhoto'));
        //$fields->push( new TextField( 'Nationality' ) );
         
        return $fields;
    }
	
	public function fortemplate(){
		
		return $this->Name;
	}
	

	

}
