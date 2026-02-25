-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('video_popup_settings', 'video_popup_settings_version', 'video_popup_settings_onpage_load', 'video_popup_settings_onpage_load_version', 'video_popup_settings_first_use', 'video_popup_settings_admin_notify');
DELETE FROM wp_options WHERE option_name LIKE '%_first_use';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_notify';

