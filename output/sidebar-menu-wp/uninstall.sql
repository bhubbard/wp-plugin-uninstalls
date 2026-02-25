-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csms_sidebar_menu_selected_menu', 'csms_sidebar_menu_colors');

