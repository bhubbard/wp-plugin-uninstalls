-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('map_width', 'map_height', 'marker_latitude', 'marker_longitude', 'marker_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('map_width', 'map_height', 'marker_latitude', 'marker_longitude', 'marker_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('map_width', 'map_height', 'marker_latitude', 'marker_longitude', 'marker_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('map_width', 'map_height', 'marker_latitude', 'marker_longitude', 'marker_icon');

