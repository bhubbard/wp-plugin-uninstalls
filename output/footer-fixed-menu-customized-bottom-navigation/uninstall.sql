-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('footerfixedmenu_button_text', 'footerfixedmenu_button_url', 'footerfixedmenu_bg_color', 'footerfixedmenu_icon_color', 'footerfixedmenu_button_bg', 'footerfixedmenu_button_text_color');

