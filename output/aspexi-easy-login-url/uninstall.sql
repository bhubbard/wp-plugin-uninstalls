-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aelurl_login_input', 'aelurl_login', 'aelurl_register_input', 'aelurl_register', 'aelurl_forgot_input', 'aelurl_forgot', 'aelurl_htaccess_original');

