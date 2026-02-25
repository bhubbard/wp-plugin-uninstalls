-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_security_check_type', 'bp_security_check_recaptcha_site_key', 'bp_security_check_recaptcha_secret_key');
DELETE FROM wp_options WHERE option_name LIKE 'bp_security_check_%';

