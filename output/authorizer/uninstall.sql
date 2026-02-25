-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auth_settings_advanced_admin_notice', 'auth_settings', 'auth_settings_access_users_approved', 'auth_settings_access_users_pending', 'auth_settings_access_users_blocked', 'auth_settings_advanced_lockouts_time_last_failed', 'auth_settings_advanced_lockouts_failed_attempts', 'auth_settings_advanced_login_error', 'auth_settings_advanced_public_notice', 'auth_settings_recently_sent_emails', 'auth_version');
DELETE FROM wp_options WHERE option_name LIKE 'auth_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('auth_blocked', 'auth_settings_advanced_lockouts_time_last_failed', 'auth_settings_advanced_lockouts_failed_attempts', 'oidc_server_id', 'oidc_id_token', 'authenticated_by', 'first_name', 'last_name', 'rule');
DELETE FROM wp_usermeta WHERE meta_key IN ('auth_blocked', 'auth_settings_advanced_lockouts_time_last_failed', 'auth_settings_advanced_lockouts_failed_attempts', 'oidc_server_id', 'oidc_id_token', 'authenticated_by', 'first_name', 'last_name', 'rule');
DELETE FROM wp_termmeta WHERE meta_key IN ('auth_blocked', 'auth_settings_advanced_lockouts_time_last_failed', 'auth_settings_advanced_lockouts_failed_attempts', 'oidc_server_id', 'oidc_id_token', 'authenticated_by', 'first_name', 'last_name', 'rule');
DELETE FROM wp_commentmeta WHERE meta_key IN ('auth_blocked', 'auth_settings_advanced_lockouts_time_last_failed', 'auth_settings_advanced_lockouts_failed_attempts', 'oidc_server_id', 'oidc_id_token', 'authenticated_by', 'first_name', 'last_name', 'rule');

