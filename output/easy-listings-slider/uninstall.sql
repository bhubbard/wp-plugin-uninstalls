-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ignore_asana_plugins_messages', 'asana_active_free_plugin', '_els_subscribe', 'els_settings', '_els_activation_redirect', 'els-google-fonts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('els_listing_gallery', 'captions', 'slides', 'property_heading', 'property_bedrooms', 'property_bathrooms', 'property_rooms', 'property_land_area', 'property_land_area_unit', 'property_status', 'slider_type', 'slider_theme', 'slider_container_id', 'slider_width', 'slider_height', 'slider_fill_mode', 'auto_play', 'autoplay_interval', 'slide_duration', 'loop', 'drag_orientation');
DELETE FROM wp_usermeta WHERE meta_key IN ('els_listing_gallery', 'captions', 'slides', 'property_heading', 'property_bedrooms', 'property_bathrooms', 'property_rooms', 'property_land_area', 'property_land_area_unit', 'property_status', 'slider_type', 'slider_theme', 'slider_container_id', 'slider_width', 'slider_height', 'slider_fill_mode', 'auto_play', 'autoplay_interval', 'slide_duration', 'loop', 'drag_orientation');
DELETE FROM wp_termmeta WHERE meta_key IN ('els_listing_gallery', 'captions', 'slides', 'property_heading', 'property_bedrooms', 'property_bathrooms', 'property_rooms', 'property_land_area', 'property_land_area_unit', 'property_status', 'slider_type', 'slider_theme', 'slider_container_id', 'slider_width', 'slider_height', 'slider_fill_mode', 'auto_play', 'autoplay_interval', 'slide_duration', 'loop', 'drag_orientation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('els_listing_gallery', 'captions', 'slides', 'property_heading', 'property_bedrooms', 'property_bathrooms', 'property_rooms', 'property_land_area', 'property_land_area_unit', 'property_status', 'slider_type', 'slider_theme', 'slider_container_id', 'slider_width', 'slider_height', 'slider_fill_mode', 'auto_play', 'autoplay_interval', 'slide_duration', 'loop', 'drag_orientation');

