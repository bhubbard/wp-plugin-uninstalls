-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bt_settings_api', 'bt_dismissed_api-keys', 'bt_settings_general');
DELETE FROM wp_options WHERE option_name LIKE 'bt_dismissed_%';

