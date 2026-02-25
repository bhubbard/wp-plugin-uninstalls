-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravityformsaddon_itsg_gf_abnlookup_settings_settings');

