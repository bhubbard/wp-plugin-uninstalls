-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('GOOGLE_MAP_API_KEY', 'default_post_edit_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('location', 'marker_description', 'marker_animation', 'is_info_window_open', 'latitude', 'longitude', 'width', 'width_metric', 'height', 'height_metric', 'zoom_level', 'draggable', 'scroll', 'map_type', 'marker_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('location', 'marker_description', 'marker_animation', 'is_info_window_open', 'latitude', 'longitude', 'width', 'width_metric', 'height', 'height_metric', 'zoom_level', 'draggable', 'scroll', 'map_type', 'marker_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('location', 'marker_description', 'marker_animation', 'is_info_window_open', 'latitude', 'longitude', 'width', 'width_metric', 'height', 'height_metric', 'zoom_level', 'draggable', 'scroll', 'map_type', 'marker_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('location', 'marker_description', 'marker_animation', 'is_info_window_open', 'latitude', 'longitude', 'width', 'width_metric', 'height', 'height_metric', 'zoom_level', 'draggable', 'scroll', 'map_type', 'marker_id');

