-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advcb_allowed_countries', 'advcb_secret_key', 'advcb_blacklisted_ips', 'advcb_trusted_ips', 'advcb_send_email_alerts', 'advcb_alert_email', 'advcb_mode', 'advcb_enable_logs', 'advcb_block_page_title', 'advcb_block_message', 'advcb_enable_redirect', 'advcb_redirect_url', 'advcb_redirect_status_code', 'advcb_http_status_code', 'advcb_log_retention_days', 'advcb_geoip_source', 'advcb_geoip_db_path', 'advcb_enable_captcha', 'advcb_captcha_provider', 'advcb_captcha_site_key', 'advcb_captcha_secret_key', 'advcb_captcha_duration', 'advcb_captcha_threshold', 'advcb_block_registration_by_country', 'advcb_registration_mode', 'advcb_registration_countries', 'advcb_registration_blocked_message', 'advcb_whitelisted_ips', 'advcb_live_activity', 'advcb_captcha_verified_ips');

