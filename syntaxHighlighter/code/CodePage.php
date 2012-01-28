<?php
class CodePage extends Page {

	static $db = array( 

      "ProgrammingLanguage" => "Enum('PHP, Javascript')", 

   ); 
   
   function getCMSFields() { 
      $fields = parent::getCMSFields(); 
      $fields->addFieldToTab("Root.Content.Main", 
      new DropdownField('ProgrammingLanguage','ProgrammingLanguage',singleton('CodePage')->dbObject('ProgrammingLanguage')->enumValues())
   );
   return $fields;
   }
   
   public function codeContent(){
		
		//return $Content; 
		$preBrackets;
   	switch ($this->ProgrammingLanguage) {
   		case 'PHP':
   		$preBrackets = '<pre class="brush: php">';
   		break;
   		case 'Javascript':
   		$preBrackets = '<pre class="brush: js">';
   		break;
   		default:
   		$preBrackets = '<pre class="brush: js">';
   		break;
   	}
		return str_replace("<pre>", $preBrackets, $this->Content);
		//return "DSsdfdfsF";
	}

}
class CodePage_Controller extends Page_Controller {

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
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		
		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		
		
		
		
		
		
		Requirements::javascript("syntaxHighlighter/javascript/shCore.js");
		Requirements::javascript("syntaxHighlighter/javascript/shBrushJScript.js");
		Requirements::customScript("
		SyntaxHighlighter.all();
		");
		Requirements::css("syntaxHighlighter/css/shCore.css");
		Requirements::css("syntaxHighlighter/css/shThemeDefault.css");
   
		return $this->renderWith(array('CodePage','Page'));
	}
}