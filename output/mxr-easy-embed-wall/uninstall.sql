-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mixer_ezembed_options_wall', 'mixer_ezembed_appearance_options_wall', 'mixer_ezembed_license_options_wall');

