-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cabGrid_Prices', 'cabGrid_Places', 'cabGrid_Options');

