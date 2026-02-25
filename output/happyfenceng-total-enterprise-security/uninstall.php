<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('happyfenceng_already_initialized');
delete_site_option('happyfenceng_already_initialized');
delete_option('happyfenceng_options');
delete_site_option('happyfenceng_options');
delete_option('happyfenceng_purge_on_uninstall');
delete_site_option('happyfenceng_purge_on_uninstall');
delete_option('happyfenceng_log_type');
delete_site_option('happyfenceng_log_type');
delete_option('happyfenceng_siem_endpoint');
delete_site_option('happyfenceng_siem_endpoint');
delete_option('happyfenceng_encryption_fingerprint');
delete_site_option('happyfenceng_encryption_fingerprint');
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

// Delete Transients
delete_transient('happyfenceng_last_error');
delete_site_transient('happyfenceng_last_error');
delete_transient('happyfenceng_cf_guard_detector');
delete_site_transient('happyfenceng_cf_guard_detector');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('happyfenceng_daily_scan');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

