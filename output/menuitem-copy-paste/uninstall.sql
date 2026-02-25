-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object', '_menu_item_object_id', '_menu_item_url', '_menu_item_target', '_menu_item_attr_title', '_menu_item_classes', '_menu_item_xfn', '_menu_item_menu_item_parent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object', '_menu_item_object_id', '_menu_item_url', '_menu_item_target', '_menu_item_attr_title', '_menu_item_classes', '_menu_item_xfn', '_menu_item_menu_item_parent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object', '_menu_item_object_id', '_menu_item_url', '_menu_item_target', '_menu_item_attr_title', '_menu_item_classes', '_menu_item_xfn', '_menu_item_menu_item_parent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object', '_menu_item_object_id', '_menu_item_url', '_menu_item_target', '_menu_item_attr_title', '_menu_item_classes', '_menu_item_xfn', '_menu_item_menu_item_parent');

