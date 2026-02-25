-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_map_setting', 'easy_map_version', 'easy_map_marker_image_id');
DELETE FROM wp_options WHERE option_name LIKE 'easy_map_marker_image_id_%';

