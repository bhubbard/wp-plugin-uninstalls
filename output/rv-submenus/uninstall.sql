-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_submenu_rv');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_level');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_level');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_level');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_level');

