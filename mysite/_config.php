<?php

global $project;
$project = 'mysite';

/*global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'mysql.willmelbourne.com',
	"username" => '247snowroot', 
	"password" => 'skateboard',
	"database" => 'wm_portfolioss',
	"path" => '',
);*/

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'skate8642',
	"database" => 'silverstripe_WM',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('tutorial');

//Director::set_environment_type("live");
Director::set_environment_type("dev");

// Set the site locale
i18n::set_locale('en_US');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
//===================---------------- START thickbox MODULE ----------------===================
//ThickBox::setAlternativeLoadingImage("thickbox/images/loading.gif");
//ThickBox::include_code();
//===================---------------- END thickbox MODULE ----------------===================

SortableDataObject::add_sortable_class('Project');
SortableDataObject::add_sortable_class('ProjectPopUp');

SS_Log::add_writer(new SS_LogEmailWriter('will_melbourne@hotmail.com'), SS_Log::WARN, '<=');

// log errors and warnings
SS_Log::add_writer(new SS_LogFileWriter('errorLog.txt'), SS_Log::WARN, '<=');
// or just errors
SS_Log::add_writer(new SS_LogFileWriter('errorLog.txt'), SS_Log::ERR);

error_reporting(E_ALL);

