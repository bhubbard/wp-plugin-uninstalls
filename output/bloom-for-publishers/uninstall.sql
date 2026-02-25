-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blm_setting_google_api_key', 'blm_setting_bloom_api_key', 'blm_setting_bloom_publisher_key', 'blm_setting_amp', 'blm_setting_tab', 'blm_setting_search_enabled', 'blm_setting_search_preview', 'blm_setting_search_settings', 'blm_setting_search_shortlink', 'blm_setting_search_icon_display', 'blm_setting_search_icon_delay_seconds', 'blm_setting_search_open_bottom', 'blm_setting_search_open_seconds', 'blm_setting_search_cookies_enabled', 'blm_setting_map_append_enabled', 'blm_setting_map_append_height', 'blm_setting_map_append_zoom', 'blm_setting_map_append_position', 'blm_setting_feed_append_enabled', 'blm_setting_feed_id');
DELETE FROM wp_options WHERE option_name LIKE 'blm_setting_posttype_%';
DELETE FROM wp_options WHERE option_name LIKE 'blm_setting_posttype_publishdate_%';
DELETE FROM wp_options WHERE option_name LIKE 'blm_setting_posttype_enddate_%';
DELETE FROM wp_options WHERE option_name LIKE 'blm_setting_posttype_expiration_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blm_savepost_response', 'blm_post_location_formatted', 'blm_post_location_latitude', 'blm_post_location_longitude', 'blm_post_location_components', 'blm_post_key', 'blm_post_location_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('blm_savepost_response', 'blm_post_location_formatted', 'blm_post_location_latitude', 'blm_post_location_longitude', 'blm_post_location_components', 'blm_post_key', 'blm_post_location_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('blm_savepost_response', 'blm_post_location_formatted', 'blm_post_location_latitude', 'blm_post_location_longitude', 'blm_post_location_components', 'blm_post_key', 'blm_post_location_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blm_savepost_response', 'blm_post_location_formatted', 'blm_post_location_latitude', 'blm_post_location_longitude', 'blm_post_location_components', 'blm_post_key', 'blm_post_location_data');

