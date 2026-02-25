-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpscb_advanced_settings', 'wpscb_contacts', 'wpscb_settings');

