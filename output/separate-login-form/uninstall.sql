-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slf_h_captcha', 'slf_h_captcha_sitekey', 'slf_h_captcha_secret');

