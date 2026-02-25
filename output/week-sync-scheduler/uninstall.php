<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weekgrfo_settings');
delete_site_option('weekgrfo_settings');
delete_option('weekgrfo_specific_settings');
delete_site_option('weekgrfo_specific_settings');
delete_option('weekgrfo_logs');
delete_site_option('weekgrfo_logs');

// Clear Cron Jobs
wp_clear_scheduled_hook('weekgrfo_send_report_once');
wp_clear_scheduled_hook('weekgrfo_send_report_specific_date');

