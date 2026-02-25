<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartaipress_activate_data_sent');
delete_site_option('smartaipress_activate_data_sent');
delete_option('smartaipress_deactivate_data_sent');
delete_site_option('smartaipress_deactivate_data_sent');
delete_option('smartaipress_settings');
delete_site_option('smartaipress_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('smartaipress_get_api_usage_data');
wp_clear_scheduled_hook('smartaipress_get_api_usage_data_for_today');

