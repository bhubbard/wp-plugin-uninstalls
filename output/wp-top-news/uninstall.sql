-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtn_api_key', 'wtn_caching_time', 'wtn_int_featured_content_settings', 'wtn_settings', 'wtn_general_settings', 'wtn_int_ticker_content_settings', 'wtn_int_ticker_styles_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wtn_flush_rewrite_rules_flag', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wtn_status', 'wtn_is_breaking', 'wtn_is_hero', 'wtn_is_featured');
DELETE FROM wp_usermeta WHERE meta_key IN ('wtn_status', 'wtn_is_breaking', 'wtn_is_hero', 'wtn_is_featured');
DELETE FROM wp_termmeta WHERE meta_key IN ('wtn_status', 'wtn_is_breaking', 'wtn_is_hero', 'wtn_is_featured');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wtn_status', 'wtn_is_breaking', 'wtn_is_hero', 'wtn_is_featured');

