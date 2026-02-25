-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sitelock_2fa_settings', 'sitelock_2fa_grace_period', 'wpslp_options', 'sitelock_account_sites', 'sitelock_account_scaninfo', 'sitelock_malware_get_scan', 'sitelock_word_quick', 'sitelock_license_key', 'sitelock_login_logger_roles', 'sitelock_login_logger_retention', 'sitelock_password_strength_enabled', 'sitelock_password_strength_user_roles', 'sitelock_force_logout_enabled', 'sitelock_force_logout_duration', 'sitelock_force_logout_excluded_roles', 'sitelock_badge_location', 'sitelock_badge_color', 'sitelock_badge_size', 'sitelock_badge_type', 'sitelock_site_id', 'sitelock_badge_link', 'sitelock_badge_img', 'sitelock_security_settings', 'sitelock_login_lockout_enabled', 'sitelock_login_lockout_max_attempts', 'sitelock_login_lockout_duration', 'sitelock_login_lockout_reset_time', 'sitelock_blocked_directories', 'sitelock_meta_tag', 'sitelock_refresh_api', 'sitelock_secret', 'sitelock_auth_error', 'sitelock_permission_error', 'sitelock_auth_success', 'slwp-plugin-activation-notice');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'sitelock_2fa_setup_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'sitelock_2fa_verified_%';
DELETE FROM wp_options WHERE option_name LIKE 'sitelock_pending_2fa_%';
DELETE FROM wp_options WHERE option_name LIKE 'sitelock_admin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sitelock_2fa_enabled', 'sitelock_2fa_secret', 'sitelock_2fa_backup_codes', 'sitelock_2fa_failed_attempts', 'sitelock_2fa_recovery_codes', 'page_protect', 'sitelock_dismissed_admin_warning', 'sitelock_force_logout_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('sitelock_2fa_enabled', 'sitelock_2fa_secret', 'sitelock_2fa_backup_codes', 'sitelock_2fa_failed_attempts', 'sitelock_2fa_recovery_codes', 'page_protect', 'sitelock_dismissed_admin_warning', 'sitelock_force_logout_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('sitelock_2fa_enabled', 'sitelock_2fa_secret', 'sitelock_2fa_backup_codes', 'sitelock_2fa_failed_attempts', 'sitelock_2fa_recovery_codes', 'page_protect', 'sitelock_dismissed_admin_warning', 'sitelock_force_logout_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sitelock_2fa_enabled', 'sitelock_2fa_secret', 'sitelock_2fa_backup_codes', 'sitelock_2fa_failed_attempts', 'sitelock_2fa_recovery_codes', 'page_protect', 'sitelock_dismissed_admin_warning', 'sitelock_force_logout_time');

