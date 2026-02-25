-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srrw_recaptcha_cf7_enabled', 'srrw_recaptcha_cf7_donate_link');

