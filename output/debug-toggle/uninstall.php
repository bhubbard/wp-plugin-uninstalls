<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('debug_toggle_monitoring_interval');
delete_site_option('debug_toggle_monitoring_interval');
delete_option('debug_toggle_monitoring');
delete_site_option('debug_toggle_monitoring');
delete_option('debug_toggle_admin_bar');
delete_site_option('debug_toggle_admin_bar');
delete_option('debug_toggle_remove_data_on_uninstall');
delete_site_option('debug_toggle_remove_data_on_uninstall');

// Clear Cron Jobs
wp_clear_scheduled_hook('debug_toggle_scheduled_monitoring');

