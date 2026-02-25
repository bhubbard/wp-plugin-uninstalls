-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcal_features_last_checked', 'wpcal_db_version', 'wpcal_last_local_task_started_time', 'wpcal_install_version', 'wpcal_version', 'wpcal_last_validate_attempt', 'wpcal_setting_time_format', 'wpcal_first_activation_redirect', 'wpcal_setting_asset_preloading_is_enabled', 'wpcal_license_auth_info');
DELETE FROM wp_options WHERE option_name LIKE 'wpcal_setting_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcal_admin_notices', 'wpcal_admin_profile_settings', 'wpcal_user_tz');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcal_admin_notices', 'wpcal_admin_profile_settings', 'wpcal_user_tz');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcal_admin_notices', 'wpcal_admin_profile_settings', 'wpcal_user_tz');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcal_admin_notices', 'wpcal_admin_profile_settings', 'wpcal_user_tz');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcal_admin_setting_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcal_admin_setting_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcal_admin_setting_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcal_admin_setting_%';

