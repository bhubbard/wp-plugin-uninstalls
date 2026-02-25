<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nandresmon_options');
delete_site_option('nandresmon_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('nandresmon_daily_cleanup');
wp_clear_scheduled_hook('nandresmon_send_report');

