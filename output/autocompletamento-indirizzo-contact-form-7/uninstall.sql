-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orem_cf7_geo_gpa_page', 'orem_cf7_geo_api_key', 'Activated_Plugin');

