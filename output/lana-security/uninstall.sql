-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lana_security_encrypt_version', 'lana_security_insecure_files', 'lana_security_login_captcha', 'lana_security_register_captcha', 'lana_security_lostpassword_captcha', 'lana_security_logs', 'lana_security_logs_cleanup_by_amount', 'lana_security_logs_cleanup_amount', 'lana_security_logs_cleanup_by_time', 'lana_security_logs_cleanup_time', 'lana_security_login_logs', 'lana_security_login_logs_cleanup_by_amount', 'lana_security_login_logs_cleanup_amount', 'lana_security_login_logs_cleanup_by_time', 'lana_security_login_logs_cleanup_time');

