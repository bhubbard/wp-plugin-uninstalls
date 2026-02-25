-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mfwp_version', 'mfwp_map_from', 'mfwp_gapikey', 'mfwp_type_map', 'mfwp_style_map', 'mfwp_h', 'mfwp_zoom_OnePoint', 'mfwp_zoom_ManyPoints', 'mfwp_default_point_img', 'mfwp_point_img', 'mfwp_center_lat_ManyPoints', 'mfwp_center_lon_ManyPoints');

