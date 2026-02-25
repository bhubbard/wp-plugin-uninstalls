-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frontend_admin_menu_status', 'frontend_admin_menu_admin_menu_backend', 'frontend_admin_menu_color', 'frontend_admin_menu', 'frontend_admin_menu_admin_bar');
DELETE FROM wp_options WHERE option_name LIKE 'frontend_admin_menu_mapping_%';
DELETE FROM wp_options WHERE option_name LIKE 'frontend_admin_menu_mapping_admin_bar_%';

