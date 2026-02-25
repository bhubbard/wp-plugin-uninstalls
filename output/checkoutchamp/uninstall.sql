-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('checkout_champ_settings_general', 'checkout_champ_settings_advanced');

