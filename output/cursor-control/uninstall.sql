-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cursor_control_custom_defaultcursor_image_upload', 'cursor_control_x_offset', 'cursor_control_y_offset');

