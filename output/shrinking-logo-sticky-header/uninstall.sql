-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slsh_header_shrink_height', 'slsh_animation_duration', 'slsh_heigth_header', 'slsh_logo_in_header_shrink_height', 'slsh_logo_in_header_shrink_left', 'slsh_nav_breakpoint', 'slsh_enable_nav_css', 'slsh_enable_off_canvas', 'slsh_off_canvas_speed', 'slsh_enable_background_color', 'slsh_hide_header', 'slsh_disable_padding', 'slsh_enable_text_menu', 'slsh_text_menu', 'slsh_disable_sticky');

