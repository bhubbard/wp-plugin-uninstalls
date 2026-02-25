-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('algwjm_enable_setting', 'algwjm_map_api_key', 'algwjm_types', 'algwjm_country_code');

