-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nhrrob_secure_limit_login_attempts', 'nhrrob_secure_login_attempts_limit', 'nhrrob_secure_custom_login_page', 'nhrrob_secure_custom_login_url', 'nhrrob_secure_protect_debug_log', 'nhrrob_secure_enable_proxy_ip', 'nhrrob_secure_enable_2fa', 'nhrrob_secure_2fa_enforced_roles', 'nhrrob_secure_2fa_type', 'nhrrob_secure_dark_mode', 'nhrrob_secure_log_retention_days', 'nhrrob_secure_disable_xmlrpc', 'nhrrob_secure_disable_file_editor', 'nhrrob_secure_hide_wp_version', 'nhrrob_secure_disable_rest_users', 'nhrrob_secure_firewall_blocked_uas', 'nhrrob_secure_idle_timeout', 'nhrrob_secure_enable_advanced_firewall', 'nhrrob_secure_ip_whitelist', 'nhrrob_secure_ip_blacklist', 'nhrrob_secure_blocked_countries', 'nhrrob_secure_audit_log_version', 'nhrrob_secure_vulnerability_results');
DELETE FROM wp_options WHERE option_name LIKE 'nhrrob_2fa_raw_codes_%';
DELETE FROM wp_options WHERE option_name LIKE 'nhrrob_2fa_%';
DELETE FROM wp_options WHERE option_name LIKE 'nhrrob_2fa_otp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nhrrob_secure_last_activity', 'nhrrob_secure_2fa_secret', 'nhrrob_secure_2fa_enabled', 'nhrrob_secure_2fa_recovery_codes');
DELETE FROM wp_usermeta WHERE meta_key IN ('nhrrob_secure_last_activity', 'nhrrob_secure_2fa_secret', 'nhrrob_secure_2fa_enabled', 'nhrrob_secure_2fa_recovery_codes');
DELETE FROM wp_termmeta WHERE meta_key IN ('nhrrob_secure_last_activity', 'nhrrob_secure_2fa_secret', 'nhrrob_secure_2fa_enabled', 'nhrrob_secure_2fa_recovery_codes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nhrrob_secure_last_activity', 'nhrrob_secure_2fa_secret', 'nhrrob_secure_2fa_enabled', 'nhrrob_secure_2fa_recovery_codes');

