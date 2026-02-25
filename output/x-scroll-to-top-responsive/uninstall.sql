-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('x_scroll_color', 'x_scroll_size', 'x_field_bg', 'x_scroll_position', 'x_scroll_border', 'xstr_option');

