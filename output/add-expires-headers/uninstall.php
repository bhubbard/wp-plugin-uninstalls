<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aeh_image_optimization_settings');
delete_site_option('aeh_image_optimization_settings');
delete_option('aeh_expires_headers_settings');
delete_site_option('aeh_expires_headers_settings');
delete_option('aeh_lazy_loading_settings');
delete_site_option('aeh_lazy_loading_settings');
delete_option('aeh_expires_headers_minify_settings');
delete_site_option('aeh_expires_headers_minify_settings');
delete_option('aeh_expires_headers_last_modified_time');
delete_site_option('aeh_expires_headers_last_modified_time');
delete_option('review_request_time');
delete_site_option('review_request_time');
delete_option('aeh_scanned_urls');
delete_site_option('aeh_scanned_urls');
delete_option('aeh_extracted_urls');
delete_site_option('aeh_extracted_urls');
delete_option('aeh_expires_headers_external_cache_settings');
delete_site_option('aeh_expires_headers_external_cache_settings');
delete_option('aeh_expires_headers_advance_settings');
delete_site_option('aeh_expires_headers_advance_settings');
delete_option('aeh-last-cache-update');
delete_site_option('aeh-last-cache-update');
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

