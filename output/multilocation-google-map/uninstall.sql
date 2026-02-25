-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mgm_map_key_options', 'mgm_map_lat_options', 'mgm_map_lng_options', 'mgm_map_zoom_options', 'mgm_map_type_options', 'mgm_map_scrollwheel_options', 'mgm_map_draggable_options', 'mgm_map_zoomcontrol_options', 'mgm_map_marker_click_zoom_options', 'mgm_upload_pointer_image_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('latitude_id', 'longitude_id', 'description_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('latitude_id', 'longitude_id', 'description_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('latitude_id', 'longitude_id', 'description_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('latitude_id', 'longitude_id', 'description_id');

