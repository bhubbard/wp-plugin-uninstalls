-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcgmp_gmaps_api', 'wpcgmp_ipinfodb_api', 'wpcgmp_marker', 'wpcgmp_count_marker', 'wpcgmp_zoom', 'wpcgmp_coord_lat', 'wpcgmp_coord_lon', 'wpcgmp_map_display', 'wpcgmp_no_comment_text', 'wpcgmp_map_width', 'wpcgmp_map_height', 'post_category');

