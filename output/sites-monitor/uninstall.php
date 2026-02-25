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
delete_option('wpsm_type_of_website');
delete_site_option('wpsm_type_of_website');
delete_option('wpsm_site_url');
delete_site_option('wpsm_site_url');
delete_option('wpsm_site_username');
delete_site_option('wpsm_site_username');
delete_option('wpsm_site_ap');
delete_site_option('wpsm_site_ap');
delete_option('wpsm_site_interval');
delete_site_option('wpsm_site_interval');
delete_option('wpsm_site_id');
delete_site_option('wpsm_site_id');
delete_option('wpsm_license_key');
delete_site_option('wpsm_license_key');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('latest_wp_version');
delete_site_transient('latest_wp_version');
delete_transient('health-check-site-status-result');
delete_site_transient('health-check-site-status-result');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');
wp_clear_scheduled_hook('wpsm_push_event');

