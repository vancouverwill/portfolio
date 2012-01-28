<?php
 
class HtmlContentWidget extends Widget {
	static $db = array(
		'WidgetTitle' => 'Varchar(255)',
		'Content' => 'HTMLText'
	);
 
	static $title = '';
	static $cmsTitle = 'HTML Content';
	static $description = 'Adds HTML content to the widget sidebar. <br />(Save and refresh the page if you cannot see the text editor field.)';
	
	function Title() {
		return $this->WidgetTitle ? $this->WidgetTitle : self::$title;
	}
	
	function output() {
		return $this->Content;
	}
 
	function getCMSFields() {
		return new FieldSet(
			new TextField('WidgetTitle', _t('TITLE', 'Title (optional)')),
			//new HtmlEditorField('Content', _t('CONTENT', 'Content'))
			new TextAreaField('Content', _t('CONTENT', 'Content'))
		);
	}
}
 
?>
