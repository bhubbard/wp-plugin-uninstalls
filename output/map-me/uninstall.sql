-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mm_error_seen', 'mm_plugin_settings', 'mm_map_locations_formated', 'mm_center_latitude', 'mm_center_longitude', 'mm_plugin_center_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mm_location_data', 'mm_latitude', 'mm_longitude', 'mm_add_coordinates', 'mm_address', 'mm_city', 'mm_zip', 'mm_country', 'mm_url', 'mm_featured', 'mm_description', 'mm_icon', 'mm_featured_animation', 'mm_info_window', 'mm_show_address', 'mm_show_zip', 'mm_show_city', 'mm_show_country', 'mm_show_description', 'mm_show_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('mm_location_data', 'mm_latitude', 'mm_longitude', 'mm_add_coordinates', 'mm_address', 'mm_city', 'mm_zip', 'mm_country', 'mm_url', 'mm_featured', 'mm_description', 'mm_icon', 'mm_featured_animation', 'mm_info_window', 'mm_show_address', 'mm_show_zip', 'mm_show_city', 'mm_show_country', 'mm_show_description', 'mm_show_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('mm_location_data', 'mm_latitude', 'mm_longitude', 'mm_add_coordinates', 'mm_address', 'mm_city', 'mm_zip', 'mm_country', 'mm_url', 'mm_featured', 'mm_description', 'mm_icon', 'mm_featured_animation', 'mm_info_window', 'mm_show_address', 'mm_show_zip', 'mm_show_city', 'mm_show_country', 'mm_show_description', 'mm_show_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mm_location_data', 'mm_latitude', 'mm_longitude', 'mm_add_coordinates', 'mm_address', 'mm_city', 'mm_zip', 'mm_country', 'mm_url', 'mm_featured', 'mm_description', 'mm_icon', 'mm_featured_animation', 'mm_info_window', 'mm_show_address', 'mm_show_zip', 'mm_show_city', 'mm_show_country', 'mm_show_description', 'mm_show_url');

