-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'is_notices', 'is_install', 'is_menu_search', 'is_settings', 'is_analytics', 'is_index', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'is_search_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_yoast_wpseo_meta-robots-noindex', '_is_locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_yoast_wpseo_meta-robots-noindex', '_is_locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_yoast_wpseo_meta-robots-noindex', '_is_locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_yoast_wpseo_meta-robots-noindex', '_is_locale');

