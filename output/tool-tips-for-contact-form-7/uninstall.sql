-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('max_width', 'box_arrow', 'box_offset', 'question_img', 'ttfcf7_icon_image', 'ttbg_color', 'tttext_color');

