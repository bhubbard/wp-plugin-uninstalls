-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmfcf_country_code', 'gmfcf_address_option', 'gmfcf_cf7_geo_api_key', 'gmfcf_map_height', 'gmfcf_cf7_geo_gpa_page');

