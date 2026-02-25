<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_speed_monitor_options');
delete_site_option('site_speed_monitor_options');

// Delete Transients
delete_transient('site_speed_monitor_stripped_parameters');
delete_site_transient('site_speed_monitor_stripped_parameters');

// Clear Cron Jobs
wp_clear_scheduled_hook('delayed_speed_test_run');
wp_clear_scheduled_hook('speed_test_run');

