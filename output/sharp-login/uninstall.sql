-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sharplogin_settings', 'sl_login_attempts_settings', 'sharplogin_page', 'sharplogin_redirect', 'attempted_login');

