-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_captcha_site_key', 'ai_captcha_secret_key', 'ai_captcha_forms');

