-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mw-wp-form-recaptcha-sitekey', 'mw-wp-form-recaptcha-centering');

