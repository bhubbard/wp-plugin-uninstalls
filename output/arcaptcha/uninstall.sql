-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arcaptcha_api_key', 'arcaptcha_theme', 'arcaptcha_language', 'arcaptcha_color', 'arcaptcha_size', 'arcaptcha_secret_key');

