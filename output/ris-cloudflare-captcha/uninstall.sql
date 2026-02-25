-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ris_cf_captcha_cloudflare_site_key', 'ris_cf_captcha_cloudflare_secret_key', 'ris_cf_captcha_enable_captcha_on_forms');

