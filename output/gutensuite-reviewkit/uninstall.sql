-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gutensuite_reviewkit_activation_flag', 'gutensuite_reviewkit_tp_reviews_original_domain', 'gutensuite_reviewkit_tp_reviews_data', 'gutensuite_reviewkit_tp_reviews_business_data', 'gutensuite_reviewkit_tp_reviews_misc_data', 'gutensuite_reviewkit_tp_reviews_domain', 'gutensuite_reviewkit_tp_reviews_count', 'gutensuite_reviewkit_tp_reviews_last_updated', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

