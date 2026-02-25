-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_login_logo';
DELETE FROM wp_options WHERE option_name LIKE '%_login_logo_width';
DELETE FROM wp_options WHERE option_name LIKE '%_login_logo_height';
DELETE FROM wp_options WHERE option_name LIKE '%_login_main_color';
DELETE FROM wp_options WHERE option_name LIKE '%_login_button_text_color';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

