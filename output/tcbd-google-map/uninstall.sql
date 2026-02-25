-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tcbd_google_map_latitude', 'tcbd_google_map_longitude', 'tcbd_google_map_zoom', 'tcbd_google_map_marker', 'tcbd_google_map_style', 'tcbd_google_map_scroll_zoom', 'tcbd_google_map_api_key');

