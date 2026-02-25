<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('threecal_settings');
delete_site_option('threecal_settings');
delete_option('threecal_db_version');
delete_site_option('threecal_db_version');

// Delete Transients
delete_transient('threecal_activated');
delete_site_transient('threecal_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('threecal_daily_notifications');
wp_clear_scheduled_hook('threecal_cleanup_expired');

