<?php
/**
 * Shows a widget with viewing blog entries
 * by months or years.
 *
 * @package blog
 */
class ProjectGalleryWidget extends Widget {
	static $db = array('DisplayedProjects' => 'VarChar', 'DisplayMode' => 'Varchar');

	static $has_one = array();

	static $has_many = array();

	static $many_many = array();

	static $belongs_many_many = array();

	static $defaults = array('DisplayedProjects' => '9', 'DisplayMode' => 'recent');

	static $title = 'Featured Projects';

	static $cmsTitle = 'Featured Projects';

	static $description = 'Show a gallery of featured projects and provide links to them.';

	function getCMSFields() {
		$fields = new FieldSet(new DropDownField('DisplayedProjects', 'No of Featured Projects', array('3' => '3', '6' => '6', '9' => '9', '12' => '12', '15' => '15')), new OptionsetField('DisplayMode', _t('ArchiveWidget.DispBY', 'Display by'), array('recent' => _t('ProjectGalleryWidget.RECENT', 'recent'), 'random' => _t('ProjectGalleryWidget.RANDOM', 'random')), $value = 'recent'));

		$this -> extend('updateCMSFields', $fields);

		return $fields;
	}

	function Projects() {
		// $container = BlogTree::current();
		// //$entries = $container->Entries($this->DisplayedEntries);
		//Debug::show($this -> DisplayedProjects);
		//Debug::show($this -> DisplayMode);
		// $entries = $container->Entries();
		if($this -> DisplayMode == 'random') {
			$Projects = DataObject::get($obj = 'Project', $filter = "`IsFeaturedProject` = '1' AND `Name` != '' AND `Status`='active'", $sort = "RAND()", $join = '', $limit = $this -> DisplayedProjects);

		} else {
			$Projects = DataObject::get($obj = 'Project', $filter = "`IsFeaturedProject` = '1' AND `Name` != '' AND `Status`='active'", $sort = 'Created DSC', $join = '', $limit = $this -> DisplayedProjects);
		}

		return $Projects;
	}

	// function init(){
	//
	// Requirements::css("blog_ProjectGalleryWidget/css/projectGalleryWidgetStyle.css");
	// }

}
