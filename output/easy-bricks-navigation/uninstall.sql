-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ebn_auto_generate_installed_bricks_plugin_menuitems', 'ebn_order_by', 'ebn_show_all_in_new_tab');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ebn_menuitem_name', 'ebn_menuitem_menu_color', 'ebn_menuitem_url', 'ebn_menuitem_origin', 'ebn_menuitem_menu_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('ebn_menuitem_name', 'ebn_menuitem_menu_color', 'ebn_menuitem_url', 'ebn_menuitem_origin', 'ebn_menuitem_menu_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('ebn_menuitem_name', 'ebn_menuitem_menu_color', 'ebn_menuitem_url', 'ebn_menuitem_origin', 'ebn_menuitem_menu_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ebn_menuitem_name', 'ebn_menuitem_menu_color', 'ebn_menuitem_url', 'ebn_menuitem_origin', 'ebn_menuitem_menu_order');

