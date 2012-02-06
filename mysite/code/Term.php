<?php
class Term extends DataObject{
	
	static $db = array (
	'TermCommand' => 'Text'
	,'Example' => 'Text'
	,'TermDescription' => 'Text'			 
	);
	
	static $default_sort = "TermDescription DESC";
	
	static $has_one = array(
		 'TermPage' => 'TermPage'
	);
	
	public function getTerms_forPopup()
	{
		return new FieldSet(
		
		new TextField('TermCommand', 'Command')
		,new TextField('Example', 'Example Usage')
		,new TextareaField('TermDescription', 'Term Description')
		);
	}
	
}