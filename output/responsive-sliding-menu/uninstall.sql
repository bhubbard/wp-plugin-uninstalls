-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsm_chosen_menu', 'rsm_responsive_width', 'rsm_main_menu_transform', 'rsm_main_menu_size', 'rsm_main_menu_color', 'rsm_hover_menu_color', 'rsm_burger_menu_size', 'rsm_burger_menu_background', 'rsm_main_burger_color', 'rsm_hover_burger_color', 'rsm_burger_menu_color', 'rsm_burger_icon');

