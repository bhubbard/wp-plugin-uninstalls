-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freenauta_enable_turnstile', 'freenauta_turnstile_site_key', 'freenauta_turnstile_secret_key');

