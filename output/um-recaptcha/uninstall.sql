-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('um_options', 'um_recaptcha_version', 'um_recaptcha_last_version_upgrade');

