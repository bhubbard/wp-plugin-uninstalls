-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pajdm_menu_breakpoint', 'pajdm_menu_top_bottom', 'pajdm_menu_left_right', 'pajdm_menu_dropdown_items', 'pajdm_menu_line_color', 'pajdm_line_thickness', 'pajdm_main_menu_line_position', 'pajdm_dropdown_menu_line_position', 'pajdm_main_menu_line_option', 'pajdm_dropdown_line_option', 'pajdm_options_dropdown_menu_icon');

