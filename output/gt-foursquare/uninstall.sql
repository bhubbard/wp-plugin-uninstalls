-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_gt4sq_feed_url', 'wp_gt4sq_feed_count', 'wp_gt4sq_map_enable', 'wp_gt4sq_list_enable', 'wp_gt4sq_icon', 'wp_gt4sq_height', 'wp_gt4sq_width', 'wp_gt4sq_widget_map_enable', 'wp_gt4sq_widget_list_enable', 'wp_gt4sq_widget_title', 'wp_gt4sq_widget_width', 'wp_gt4sq_widget_height');

