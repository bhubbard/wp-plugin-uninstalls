-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hcaptcha_api_key', 'hcaptcha_lang', 'hcaptcha_background', 'hcaptcha_border');

