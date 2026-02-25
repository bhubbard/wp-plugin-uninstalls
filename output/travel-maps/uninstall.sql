-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('travel_maps_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('markers', 'travel_maps_meta_center_lat', 'travel_maps_meta_center_lng', 'travel_maps_meta_center_address', 'travel_maps_meta_zoom', 'travel_maps_meta_height', 'travel_maps_meta_width');
DELETE FROM wp_usermeta WHERE meta_key IN ('markers', 'travel_maps_meta_center_lat', 'travel_maps_meta_center_lng', 'travel_maps_meta_center_address', 'travel_maps_meta_zoom', 'travel_maps_meta_height', 'travel_maps_meta_width');
DELETE FROM wp_termmeta WHERE meta_key IN ('markers', 'travel_maps_meta_center_lat', 'travel_maps_meta_center_lng', 'travel_maps_meta_center_address', 'travel_maps_meta_zoom', 'travel_maps_meta_height', 'travel_maps_meta_width');
DELETE FROM wp_commentmeta WHERE meta_key IN ('markers', 'travel_maps_meta_center_lat', 'travel_maps_meta_center_lng', 'travel_maps_meta_center_address', 'travel_maps_meta_zoom', 'travel_maps_meta_height', 'travel_maps_meta_width');

