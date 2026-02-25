-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows', 'hey_notify_settings', 'hey_notify_settings_general', 'hey_notify_settings_licenses', 'hey_notify_settings_uninstall', 'hey_notify_live_preview', 'hey_notify_custom_post_types', 'hey_notify_version', 'active_sitewide_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_status';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

