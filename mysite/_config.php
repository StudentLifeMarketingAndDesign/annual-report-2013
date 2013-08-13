<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'omega',
	"database" => 'annual-report-2013',
	"path" => '',
);

Security::setDefaultAdmin('admin','password');

// Set the site locale
i18n::set_locale('en_US');