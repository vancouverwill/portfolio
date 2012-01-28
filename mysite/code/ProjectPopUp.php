<?php
class ProjectPopUp extends DataObject {

	public static $db = array(
		'PopUpTitle' => 'Text',
		'PopUpContent' => 'Text',
		'PopUpLink' => 'Text',
		'PopUpHTMLContent' => 'HTMLText'
	);

	public static $has_one = array(
	 'Photo' => 'Image',
	 'ParentProject' => 'Project'
	);
	
	public static $has_many = array(
	'Projects' => 'Project'
	);
	
	function getCMSFields_forPopup() {
        $fields = new FieldSet();
         $fields->push(new DropdownField(  
    'ParentProjectID',
    'Please choose an object',
    Dataobject::get("Project")->map("ID", "Name", "Please Select")
));
        //$fields->push( new TextField( 'FirstName', 'First Name' ) );
        $fields->push( new TextField( 'PopUpTitle' ) );
        $fields->push( new TextField( 'PopUpContent' ) );
        //$fields->push( new SimpleHTMLEditorField( 'PopUpHTMLContent' ) );
        $fields->push( new SimpleTinyMCEField( 'PopUpHTMLContent' ) );
        //$fields->push( new SimpleWysiwygField( 'PopUpHTMLContent' ) );
        $fields->push( new TextField( 'PopUpLink' ) );
		//$fields->push( new ImageField('Photo'));
		$fields->push( new ImageUploadField('Photo'));
        //$fields->push( new TextField( 'Nationality' ) );
         
        return $fields;
    }

}
