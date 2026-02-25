-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('changeloger_settings', 'cha_release_hub_map', 'csf_demo_mode', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'changeloger_rest_api_status', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_disabled';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cha_feedback_status', '_cha_badge_slug', '_badge_color', '_badge_order', '_cha_release_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cha_feedback_status', '_cha_badge_slug', '_badge_color', '_badge_order', '_cha_release_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cha_feedback_status', '_cha_badge_slug', '_badge_color', '_badge_order', '_cha_release_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cha_feedback_status', '_cha_badge_slug', '_badge_color', '_badge_order', '_cha_release_type');

