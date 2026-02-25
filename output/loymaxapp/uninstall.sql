-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('theme_mods_customify', 'loymax_install_wizard_in_progress', 'loymax-page-link', 'loymax-page-title', 'loymax-navigation-menu-id', 'loymax-personal-menu-item-id', 'loymax-component-order', 'jal_db_version', 'loymax_update_error', 'loymax_page_ID', 'loymax_plugin_updated', 'loymax_page_delete_prevented', 'loymax_menu_delete_prevented');

