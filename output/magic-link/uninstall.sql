-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'kc_ml_settings', 'magic_link_enable_registration', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'kc_plugins_info');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_magic_link_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_magic_link_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_magic_link_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_magic_link_token');

