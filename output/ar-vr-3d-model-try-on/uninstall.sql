-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ar_try_on_settings', 'ar_try_on_compression_settings', 'get_cache_data', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'ar_try_on_clicks_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_cached_promos';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ar_try_on_product_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('ar_try_on_product_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('ar_try_on_product_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ar_try_on_product_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ar_try_on_dismiss_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ar_try_on_dismiss_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ar_try_on_dismiss_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ar_try_on_dismiss_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ar_try_on_shown_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ar_try_on_shown_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ar_try_on_shown_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ar_try_on_shown_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ar_try_on_clicked_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ar_try_on_clicked_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ar_try_on_clicked_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ar_try_on_clicked_%';

