-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object');

