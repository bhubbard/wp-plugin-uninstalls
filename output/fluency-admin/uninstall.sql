-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fluency_login_style', 'fluency_login_logo', 'fluency_login_link', 'fluency_menu_logo', 'fluency_hidden_menu_logo', 'fluency_menu_width', 'fluency_menu_position', 'fluency_menu_icons', 'fluency_click_menus', 'fluency_hot_keys', 'fluency_custom_color', 'fluency_admin_drop_down', 'fluency_hide_menu');

