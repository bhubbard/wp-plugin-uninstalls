-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notification_wizard_dismissed', 'notification_debug_log', 'adminhash', 'active_sitewide_plugins', 'notification_general', '_transient_notification_settings_config', '_notification_settings_config', '_notification_settings_hash', 'notification_licenses', 'notification_story_dismissed', 'notification_data_version', 'notification_db_version', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'notification_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_enabled_notification', '_edit_last', '_new_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_enabled_notification', '_edit_last', '_new_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_enabled_notification', '_edit_last', '_new_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_enabled_notification', '_edit_last', '_new_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_notification_type_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_notification_type_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_notification_type_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_notification_type_%';

