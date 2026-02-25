-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('math_captcha_lic', 'math_captcha_options', 'math_captcha_version', 'mc_options');
DELETE FROM wp_options WHERE option_name LIKE 'mc_%';
DELETE FROM wp_options WHERE option_name LIKE 'frm_%';
DELETE FROM wp_options WHERE option_name LIKE 'woologin_%';
DELETE FROM wp_options WHERE option_name LIKE 'bbp_%';
DELETE FROM wp_options WHERE option_name LIKE 'cf7_%';

