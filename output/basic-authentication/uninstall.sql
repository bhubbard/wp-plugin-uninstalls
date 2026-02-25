-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basic_authentication_enabled', 'basic_authentication_method', 'basic_authentication_password');

