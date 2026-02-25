-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spmioa_menu_before_plugin_activation', 'spmioa_submenu_before_plugin_activation');

