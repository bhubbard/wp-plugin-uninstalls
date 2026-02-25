-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustcaptcha_plugins', 'trustcaptcha_options', 'trustcaptcha_network_options', 'trustcaptcha_error');

