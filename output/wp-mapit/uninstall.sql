-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmi_allowed_post_types', 'wpmi_map_type', 'wpmi_latitude', 'wpmi_longitude', 'wpmi_map_width', 'wpmi_map_width_type', 'wpmi_map_height', 'wpmi_map_height_type', 'wpmi_map_zoom', 'wpmi_map_marker', 'wpmi_map_position');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpmi_map_latitiude', 'wpmi_map_longitude', 'wpmi_map_zoom', 'wpmi_map_position', 'wpmi_map_type', 'wpmi_marker_image', 'wpmi_marker_title', 'wpmi_marker_content', 'wpmi_marker_url', 'wpmi_multipin_map_latitiude', 'wpmi_multipin_map_longitude', 'wpmi_multipin_map_zoom', 'wpmi_multipin_map_type', 'wpmi_multipin_map_marker_image', 'wp_mapit_pins');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpmi_map_latitiude', 'wpmi_map_longitude', 'wpmi_map_zoom', 'wpmi_map_position', 'wpmi_map_type', 'wpmi_marker_image', 'wpmi_marker_title', 'wpmi_marker_content', 'wpmi_marker_url', 'wpmi_multipin_map_latitiude', 'wpmi_multipin_map_longitude', 'wpmi_multipin_map_zoom', 'wpmi_multipin_map_type', 'wpmi_multipin_map_marker_image', 'wp_mapit_pins');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpmi_map_latitiude', 'wpmi_map_longitude', 'wpmi_map_zoom', 'wpmi_map_position', 'wpmi_map_type', 'wpmi_marker_image', 'wpmi_marker_title', 'wpmi_marker_content', 'wpmi_marker_url', 'wpmi_multipin_map_latitiude', 'wpmi_multipin_map_longitude', 'wpmi_multipin_map_zoom', 'wpmi_multipin_map_type', 'wpmi_multipin_map_marker_image', 'wp_mapit_pins');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpmi_map_latitiude', 'wpmi_map_longitude', 'wpmi_map_zoom', 'wpmi_map_position', 'wpmi_map_type', 'wpmi_marker_image', 'wpmi_marker_title', 'wpmi_marker_content', 'wpmi_marker_url', 'wpmi_multipin_map_latitiude', 'wpmi_multipin_map_longitude', 'wpmi_multipin_map_zoom', 'wpmi_multipin_map_type', 'wpmi_multipin_map_marker_image', 'wp_mapit_pins');

