-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('marker_ID', 'map_latitude', 'map_longitude', 'map_zoom_level', 'marker_latitude', 'marker_longitude', 'marker_zoom_level', 'marker_label');
DELETE FROM wp_usermeta WHERE meta_key IN ('marker_ID', 'map_latitude', 'map_longitude', 'map_zoom_level', 'marker_latitude', 'marker_longitude', 'marker_zoom_level', 'marker_label');
DELETE FROM wp_termmeta WHERE meta_key IN ('marker_ID', 'map_latitude', 'map_longitude', 'map_zoom_level', 'marker_latitude', 'marker_longitude', 'marker_zoom_level', 'marker_label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('marker_ID', 'map_latitude', 'map_longitude', 'map_zoom_level', 'marker_latitude', 'marker_longitude', 'marker_zoom_level', 'marker_label');

