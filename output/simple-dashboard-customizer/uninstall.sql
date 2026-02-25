-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpledc_logo', 'simpledc_sidebar_bg', 'simpledc_active_menu_bg', 'simpledc_menu_text_color', 'simpledc_menu_hover_and_submenu_bg', 'simpledc_active_menu_text_color', 'simpledc_content_bg');

