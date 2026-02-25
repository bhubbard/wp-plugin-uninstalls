-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wps_limit_login_allow_local_options', 'wps_limit_login_use_local_options', 'site_name', 'wps_limit_login_activated', 'wpslimitlogin_admin_footer_text_rated', 'wps_limit_lockout_notify', 'wps_limit_login_show_credit_link', 'wps_limit_login_allowed_retries', 'wps_limit_login_lockout_duration', 'wps_limit_login_valid_duration', 'wps_limit_login_allowed_lockouts', 'wps_limit_login_long_duration', 'wps_limit_login_notify_email_after', 'wps_limit_login_whitelist', 'wps_limit_login_blacklist', 'wps_limit_login_retries', 'wps_limit_login_retries_valid', 'wps_limit_login_logged', 'wps_limit_lockouts_total', 'wps_limit_login_lockouts', 'wps_plugins_adds');

