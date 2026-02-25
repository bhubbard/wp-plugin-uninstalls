-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_splash_page_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_access_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_authenticated_user_access_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_allowed_ips';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_message';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_html';
DELETE FROM wp_options WHERE option_name LIKE '%_return_503';

