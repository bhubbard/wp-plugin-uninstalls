-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shift8_gravitysap_settings', 'shift8_gravitysap_item_codes_data');

