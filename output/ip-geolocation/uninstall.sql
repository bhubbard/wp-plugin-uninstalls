-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipgeo_enable_map', 'ipgeo_map_api_token', 'ipgeo_map_service', 'ipgeo_input_class', 'ipgeo_button_class', 'ipgeo_default_ip_type', 'ipgeo_api_service', 'ipgeo_api_token', 'ipgeo_map_width_section', 'ipgeo_map_height_section');

