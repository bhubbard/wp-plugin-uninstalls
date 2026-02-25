-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aeh_image_optimization_settings', 'aeh_expires_headers_settings', 'aeh_lazy_loading_settings', 'aeh_expires_headers_minify_settings', 'aeh_expires_headers_last_modified_time', 'review_request_time', 'aeh_scanned_urls', 'aeh_extracted_urls', 'aeh_expires_headers_external_cache_settings', 'aeh_expires_headers_advance_settings', 'aeh-last-cache-update', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

