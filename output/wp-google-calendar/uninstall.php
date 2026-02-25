<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('events_database_version');
delete_site_option('events_database_version');
delete_option('api_setting_database_version');
delete_site_option('api_setting_database_version');
delete_option('google_cal_file');
delete_site_option('google_cal_file');

