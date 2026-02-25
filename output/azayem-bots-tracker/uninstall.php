<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bt_bots_retention_days');
delete_site_option('bt_bots_retention_days');
delete_option('bt_bots_filter_enabled');
delete_site_option('bt_bots_filter_enabled');
delete_option('bt_bots_filter_mode');
delete_site_option('bt_bots_filter_mode');
delete_option('bt_bots_filter_source');
delete_site_option('bt_bots_filter_source');
delete_option('bt_bots_filter_selected_bots');
delete_site_option('bt_bots_filter_selected_bots');
delete_option('bt_bots_filter_custom_names');
delete_site_option('bt_bots_filter_custom_names');
delete_option('bt_bots_tracker_db_version');
delete_site_option('bt_bots_tracker_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('bt_bots_tracker_cleanup_event');

