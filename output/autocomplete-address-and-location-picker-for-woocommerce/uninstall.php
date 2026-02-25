<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aafw_google_api_key');
delete_site_option('aafw_google_api_key');
delete_option('aafw_shipping_autocomplete');
delete_site_option('aafw_shipping_autocomplete');
delete_option('aafw_billing_autocomplete');
delete_site_option('aafw_billing_autocomplete');
delete_option('aafw_initial_map');
delete_site_option('aafw_initial_map');
delete_option('aafw_address_format');
delete_site_option('aafw_address_format');
delete_option('aafw_debug_logs');
delete_site_option('aafw_debug_logs');
delete_option('aafw_pickup_autocomplete');
delete_site_option('aafw_pickup_autocomplete');
delete_option('aafw_activation_date');
delete_site_option('aafw_activation_date');
delete_option('aafw_review_action');
delete_site_option('aafw_review_action');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('aafw_center_map_latitude');
delete_site_option('aafw_center_map_latitude');
delete_option('aafw_center_map_longitude');
delete_site_option('aafw_center_map_longitude');
delete_option('aafw_map_zoom');
delete_site_option('aafw_map_zoom');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

