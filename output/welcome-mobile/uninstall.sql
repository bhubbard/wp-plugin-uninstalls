-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_position';
DELETE FROM wp_options WHERE option_name LIKE '%_visibility';
DELETE FROM wp_options WHERE option_name LIKE '%_cookie';
DELETE FROM wp_options WHERE option_name LIKE '%_close_button';
DELETE FROM wp_options WHERE option_name LIKE '%_use_default';
DELETE FROM wp_options WHERE option_name LIKE '%_default_message';
DELETE FROM wp_options WHERE option_name LIKE '%_android_message';
DELETE FROM wp_options WHERE option_name LIKE '%_ios_message';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_css';

