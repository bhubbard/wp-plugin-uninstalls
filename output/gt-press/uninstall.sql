-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('GTPress', 'gtpressMenu_default_menu', 'gtpressMenu_default_submenu', 'gtpressMenu_disabled_menu_items', 'gtpressMenu_disabled_submenu_items', 'gtpressMenu_disabled_metas', 'GTTabs', 'gtpressMenu_admins_see_everything');

