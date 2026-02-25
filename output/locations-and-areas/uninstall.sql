-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'laa_map_style', 'laa_marker_icon', 'laa_getting_started_notice_dismissed', 'laa_layout_style', 'laa_start_lat', 'laa_start_lng', 'laa_start_zoom', 'laa_disable_areas', 'laa_hide_address', 'laa_disable_gmaps_link', 'laa_disable_cluster', 'laa_enable_frontend_location_adding', 'laa_thankyou_headline', 'laa_thankyou_text', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lat', 'lng', 'zoom', '_laa_location_key', '_laa_location_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('lat', 'lng', 'zoom', '_laa_location_key', '_laa_location_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('lat', 'lng', 'zoom', '_laa_location_key', '_laa_location_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lat', 'lng', 'zoom', '_laa_location_key', '_laa_location_image');

