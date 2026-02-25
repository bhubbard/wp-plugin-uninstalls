-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tron_login_protect_pin', 'tron_login_protect_notify', 'tron_login_options_r', 'tron_login_protect_activation_redirect');

