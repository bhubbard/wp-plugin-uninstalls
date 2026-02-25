-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_math_captcha';
DELETE FROM wp_options WHERE option_name LIKE '%_image_captcha';
DELETE FROM wp_options WHERE option_name LIKE '%_google_captcha';
DELETE FROM wp_options WHERE option_name LIKE '%_google_captcha_v3';
DELETE FROM wp_options WHERE option_name LIKE '%_general_config_captcha';

