-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_amember_login_api_url', 'wp_amember_login_api_key', 'wp_amember_login', 'my_option_name');
DELETE FROM wp_options WHERE option_name LIKE 'wp_amember_login_%';

