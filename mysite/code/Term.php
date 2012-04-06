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
        
        static $searchable_fields = array(
          'TermCommand',
          'Example'
       );
        
        static $summary_fields = array(
          'TermCommand',
          'Example'
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