-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('staff_mgt_staff', 'staff_mgt_order_by', 'staff_mgt_order_by_direction', 'staff_mgt_display_columns', 'staff_mgt_background_color', 'staff_mgt_border_color', 'staff_mgt_font_color');

