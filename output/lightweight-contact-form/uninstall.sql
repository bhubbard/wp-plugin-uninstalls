-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lcf_recaptcha_v3_secret_key', 'lcf_recaptcha_v3_site_key');

