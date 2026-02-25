-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kitgenix_captcha_for_cloudflare_turnstile_metrics', 'kitgenix_captcha_for_cloudflare_turnstile_settings', 'kitgenix_turnstile_last_verify', 'kitgenix_captcha_for_cloudflare_turnstile_do_activation_redirect');

