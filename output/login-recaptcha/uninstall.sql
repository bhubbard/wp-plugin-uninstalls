-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login_nocaptcha_key', 'login_nocaptcha_secret', 'login_nocaptcha_whitelist', 'login_nocaptcha_ip_detection_method', 'login_nocaptcha_disable_css', 'login_nocaptcha_v3_key', 'login_nocaptcha_v3_secret', 'login_nocaptcha_notice', 'login_nocaptcha_working', 'login_nocaptcha_message_type', 'login_nocaptcha_error', 'login_nocaptcha_google_error');

