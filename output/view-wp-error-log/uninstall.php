<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('view_wp_error_log_no_lines');
delete_site_option('view_wp_error_log_no_lines');
delete_option('view_wp_error_log_log');
delete_site_option('view_wp_error_log_log');

// Clear Cron Jobs
wp_clear_scheduled_hook('view_wp_error_log_daily_event');

