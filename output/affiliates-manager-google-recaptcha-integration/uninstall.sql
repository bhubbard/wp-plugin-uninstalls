-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpam_google_recaptcha_site_key', 'wpam_google_recaptcha_secret_key');

