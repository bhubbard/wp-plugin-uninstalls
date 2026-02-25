-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moove_activity-options', 'moove_post_act', 'moove_importer_has_database', 'moove_importer_has_extras', 'uat_db_support_request_url', 'uat_delete_abandoned_logs', 'uat_last_checked', 'uat_update_data', 'moove-activity-timezone-offset', 'moove_tracking_settings_act', 'uat_log_permissions', 'uat_settings_permissions', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'plugin_info_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ma_data', 'ma_disabled', 'moove_activity_screen_options', 'uat_dismiss_stamp_p', 'uat_dismiss_stamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('ma_data', 'ma_disabled', 'moove_activity_screen_options', 'uat_dismiss_stamp_p', 'uat_dismiss_stamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('ma_data', 'ma_disabled', 'moove_activity_screen_options', 'uat_dismiss_stamp_p', 'uat_dismiss_stamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ma_data', 'ma_disabled', 'moove_activity_screen_options', 'uat_dismiss_stamp_p', 'uat_dismiss_stamp');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'uat_dismiss_stamp%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'uat_dismiss_stamp%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'uat_dismiss_stamp%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'uat_dismiss_stamp%';

