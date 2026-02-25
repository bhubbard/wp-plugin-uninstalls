<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('QRLA_time');
delete_site_option('QRLA_time');
delete_option('QRLA_time_limit');
delete_site_option('QRLA_time_limit');
delete_option('QRLA_code');
delete_site_option('QRLA_code');
delete_option('QRLA_random_string');
delete_site_option('QRLA_random_string');

// Clear Cron Jobs
wp_clear_scheduled_hook('QRLA_schedule_event');

