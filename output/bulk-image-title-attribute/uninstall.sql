-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bigta_tour', 'bigta', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bigta_use_custom_title', 'bigta_custom_title', 'bigta_disable', 'rank_math_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('bigta_use_custom_title', 'bigta_custom_title', 'bigta_disable', 'rank_math_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('bigta_use_custom_title', 'bigta_custom_title', 'bigta_disable', 'rank_math_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bigta_use_custom_title', 'bigta_custom_title', 'bigta_disable', 'rank_math_focus_keyword');

