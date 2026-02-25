<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('geotools_TBMilles');
delete_site_option('geotools_TBMilles');
delete_option('geotools_tb_answer_type');
delete_site_option('geotools_tb_answer_type');
delete_option('geotools-color-picker-background-trackable');
delete_site_option('geotools-color-picker-background-trackable');
delete_option('geotools_statbaranswer_type');
delete_site_option('geotools_statbaranswer_type');
delete_option('geotools_statbar_geocacheur');
delete_site_option('geotools_statbar_geocacheur');
delete_option('geotools_statbar_Citation');
delete_site_option('geotools_statbar_Citation');
delete_option('geotools_statbar_guid');
delete_site_option('geotools_statbar_guid');
delete_option('geotools_statbar_image');
delete_site_option('geotools_statbar_image');
delete_option('geotools-statbar-title');
delete_site_option('geotools-statbar-title');
delete_option('geotoolsTBNumber');
delete_site_option('geotoolsTBNumber');
delete_option('geotools-trackable-title');
delete_site_option('geotools-trackable-title');
delete_option('geotools-color-picker-background-trackable-r');
delete_site_option('geotools-color-picker-background-trackable-r');
delete_option('geotools-color-picker-background-trackable-g');
delete_site_option('geotools-color-picker-background-trackable-g');
delete_option('geotools-color-picker-background-trackable-b');
delete_site_option('geotools-color-picker-background-trackable-b');

