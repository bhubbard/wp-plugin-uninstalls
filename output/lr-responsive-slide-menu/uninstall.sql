-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('theme_location', 'mobile_width', 'menu_id', 'menu_background', 'menu_background_hover', 'menu_item_color', 'menu_item_color_hover');

