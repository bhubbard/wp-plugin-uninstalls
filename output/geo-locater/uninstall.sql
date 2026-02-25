-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('locater_google_api_key', 'locater_map_zoom_size', 'locater_map_radius', 'locater_map_marker_img', 'locater_sub_title_text');

