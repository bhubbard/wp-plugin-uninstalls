-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcb_settings_options', 'rcb_recaptcha_options', 'rcb_settings_options_picker');

