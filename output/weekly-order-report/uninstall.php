<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weekorre_settings');
delete_site_option('weekorre_settings');
delete_option('weekorre_specific_date_settings');
delete_site_option('weekorre_specific_date_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('weekorre_send_report_once');
wp_clear_scheduled_hook('weekorre_send_report_specific_date');

