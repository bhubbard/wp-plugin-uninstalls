-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shortcode_ebayaffiliate_system', 'ebayaff_settings');

