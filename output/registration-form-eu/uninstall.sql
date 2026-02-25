-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('registration_form_eu_options_cfg', 'registration_form_eu_options');

