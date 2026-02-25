-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpkeysymbl_line_color', 'wpkeysymbl_box_color', 'wpkeysymbl_border_color', 'wpkeysymbl_text_color');

