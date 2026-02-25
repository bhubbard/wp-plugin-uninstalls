<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdwpst_search_tracker_telemetry_allowed');
delete_site_option('pdwpst_search_tracker_telemetry_allowed');
delete_option('pdwpst_search_tracker_show_telemetry_prompt');
delete_site_option('pdwpst_search_tracker_show_telemetry_prompt');
delete_option('search_tracker_show_telemetry_prompt');
delete_site_option('search_tracker_show_telemetry_prompt');
delete_option('search_tracker_telemetry_allowed');
delete_site_option('search_tracker_telemetry_allowed');
delete_option('pdwpst_search_tracker_delete_on_uninstall');
delete_site_option('pdwpst_search_tracker_delete_on_uninstall');
delete_option('pdwpst_user_searches_db_version');
delete_site_option('pdwpst_user_searches_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('pdwpst_search_tracker_telemetry_cron');
wp_clear_scheduled_hook('search_tracker_telemetry_cron');

