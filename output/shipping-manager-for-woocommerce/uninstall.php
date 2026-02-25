<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
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
delete_option('wcsm_parent_country');
delete_site_option('wcsm_parent_country');
delete_option('cities_data');
delete_site_option('cities_data');
delete_option('checkout_cities_label');
delete_site_option('checkout_cities_label');
delete_option('wcsm_disabled_shipping');
delete_site_option('wcsm_disabled_shipping');
delete_option('wcsm_disabled_billing');
delete_site_option('wcsm_disabled_billing');
delete_option('wcsm_cities_status');
delete_site_option('wcsm_cities_status');
delete_option('wcsm_cities_text');
delete_site_option('wcsm_cities_text');
delete_option('wcsm_cities_zones');
delete_site_option('wcsm_cities_zones');

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

