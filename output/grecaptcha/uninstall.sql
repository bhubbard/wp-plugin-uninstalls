-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grecaptcha_site_key', 'grecaptcha_secret_key', 'grecaptcha_version', 'grecaptcha_theme', 'grecaptcha_v2_size', 'grecaptcha_v2_badge', 'grecaptcha_v3_threshold');

