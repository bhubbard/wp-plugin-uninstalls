-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hnp_openmaps_map_address', 'hnp_openmaps_map_name', 'hnp_openmaps_map_zoom', 'hnp_openmaps_map_style', 'hnp_openmaps_map_height', 'hnp_openmaps_map_width');

