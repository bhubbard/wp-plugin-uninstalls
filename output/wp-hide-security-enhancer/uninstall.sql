-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webarx_mv_wp_login', 'webarx_rename_wp_login', 'wph-environment-ignore-rewrite-test', 'wph/site_scan', 'wph-first-view', 'wph-process_set_static_environment_errors', 'wph_settings', 'wph-previous-login-url', 'active_sitewide_plugins', 'wph-login-changed-send-email', 'current_theme', 'wph_cache_files_data', 'update_plugins', 'update_themes', 'wph-process_interface_save_errors', 'wph-process_API_interface_errors', 'wphide-local-ip');
DELETE FROM wp_options WHERE option_name LIKE '%user_roles';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_2fa_nonce', '_2fa_app_setup_completed', '_2fa_app_secret', '_2fa_email_token_timestamp', '_2fa_email_token', '_2fa_rc_setup_completed', '_2fa_rc_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('_2fa_nonce', '_2fa_app_setup_completed', '_2fa_app_secret', '_2fa_email_token_timestamp', '_2fa_email_token', '_2fa_rc_setup_completed', '_2fa_rc_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('_2fa_nonce', '_2fa_app_setup_completed', '_2fa_app_secret', '_2fa_email_token_timestamp', '_2fa_email_token', '_2fa_rc_setup_completed', '_2fa_rc_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_2fa_nonce', '_2fa_app_setup_completed', '_2fa_app_secret', '_2fa_email_token_timestamp', '_2fa_email_token', '_2fa_rc_setup_completed', '_2fa_rc_list');

