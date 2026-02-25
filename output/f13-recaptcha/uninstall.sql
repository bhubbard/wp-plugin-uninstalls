-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('f13_recaptcha_enable', 'f13_recaptcha_private_key', 'f13_recaptcha_public_key');

