<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bookaroom_events_db_key');
delete_site_option('bookaroom_events_db_key');
delete_option('bookaroom_events_db_database');
delete_site_option('bookaroom_events_db_database');
delete_option('bookaroom_events_db_username');
delete_site_option('bookaroom_events_db_username');
delete_option('bookaroom_events_db_password');
delete_site_option('bookaroom_events_db_password');
delete_option('bookaroom_events_prefix');
delete_site_option('bookaroom_events_prefix');
delete_option('bookaroom_events_db_host');
delete_site_option('bookaroom_events_db_host');
delete_option('bookaroom_events_regpage_URL');
delete_site_option('bookaroom_events_regpage_URL');
delete_option('bookaroom_db_versions');
delete_site_option('bookaroom_db_versions');

