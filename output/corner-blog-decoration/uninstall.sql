-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbd_str', 'cbd_left_right', 'cbd_top_bottom', 'cbd_left_right_px', 'cbd_top_bottom_px');

