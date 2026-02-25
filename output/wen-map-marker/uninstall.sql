-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wen_map_marker_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wen_map_marker_address', 'wen_map_marker_zoom', 'wen_map_marker_lat', 'wen_map_marker_lng', 'wen_map_marker_content_append');
DELETE FROM wp_usermeta WHERE meta_key IN ('wen_map_marker_address', 'wen_map_marker_zoom', 'wen_map_marker_lat', 'wen_map_marker_lng', 'wen_map_marker_content_append');
DELETE FROM wp_termmeta WHERE meta_key IN ('wen_map_marker_address', 'wen_map_marker_zoom', 'wen_map_marker_lat', 'wen_map_marker_lng', 'wen_map_marker_content_append');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wen_map_marker_address', 'wen_map_marker_zoom', 'wen_map_marker_lat', 'wen_map_marker_lng', 'wen_map_marker_content_append');

