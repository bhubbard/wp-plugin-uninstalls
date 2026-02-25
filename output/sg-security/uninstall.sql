-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sg_security_lock_system_folders', 'sg_security_disable_xml_rpc', 'sgs_activity_log_lifetime', 'sg_security_server_address', 'sg_security_user_ping_services', 'sg_security_user_crawlers', 'sg_security_total_blocked_logins', 'sg_security_total_blocked_visits', 'siteground_email_consent', 'sg_security_weekly_email_timestamp', 'sg_security_notification_emails', 'sg_security_update_timestamp', 'siteground_data_consent', 'siteground_settings_security', 'sg_security_current_version', 'sg_security_login_type', 'sg_security_login_url', 'sg_login_access', 'sg_security_login_redirect', 'sg_security_login_register', 'sg_security_show_signup_notice', 'sg_security_login_attempts', 'sgs_install_1_3_6', 'sgs_install_1_3_7', 'sgs_install_1_4_2', 'sgs_install_1_4_4', 'sgs_install_1_4_7', 'sg_security_version', 'sg_security_disable_activity_log', 'sg_security_delete_readme', 'sg_security_unsuccessful_login', 'sg_security_show_rating', 'sg_security_disable_file_edit', 'sg_security_wp_remove_version', 'sg_security_disable_feed', 'sg_security_xss_protection', 'sg_security_sg2fa', 'sg_security_disable_usernames', 'sg_security_2fa_encryption_file_notice', '_sg_security_installing');
DELETE FROM wp_options WHERE option_name LIKE 'sg_security_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sgs_additional_codes_added', 'sg_security_2fa_backup_codes', 'sg_security_2fa_secret', 'sg_security_2fa_qr', 'sg_security_force_password_reset', 'sgs_2fa_dnc_token', 'sg_security_2fa_configured', 'sgs_2fa_login_nonce');
DELETE FROM wp_usermeta WHERE meta_key IN ('sgs_additional_codes_added', 'sg_security_2fa_backup_codes', 'sg_security_2fa_secret', 'sg_security_2fa_qr', 'sg_security_force_password_reset', 'sgs_2fa_dnc_token', 'sg_security_2fa_configured', 'sgs_2fa_login_nonce');
DELETE FROM wp_termmeta WHERE meta_key IN ('sgs_additional_codes_added', 'sg_security_2fa_backup_codes', 'sg_security_2fa_secret', 'sg_security_2fa_qr', 'sg_security_force_password_reset', 'sgs_2fa_dnc_token', 'sg_security_2fa_configured', 'sgs_2fa_login_nonce');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sgs_additional_codes_added', 'sg_security_2fa_backup_codes', 'sg_security_2fa_secret', 'sg_security_2fa_qr', 'sg_security_force_password_reset', 'sgs_2fa_dnc_token', 'sg_security_2fa_configured', 'sgs_2fa_login_nonce');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sg_security_2fa_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sg_security_2fa_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sg_security_2fa_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sg_security_2fa_%';

