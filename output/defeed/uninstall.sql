-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('defeed_additional_options', 'defeed_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_defeed_item_info', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', '_menu_item_url', '_menu_item_orphaned', 'nav_menu_recently_edited');
DELETE FROM wp_usermeta WHERE meta_key IN ('_defeed_item_info', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', '_menu_item_url', '_menu_item_orphaned', 'nav_menu_recently_edited');
DELETE FROM wp_termmeta WHERE meta_key IN ('_defeed_item_info', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', '_menu_item_url', '_menu_item_orphaned', 'nav_menu_recently_edited');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_defeed_item_info', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', '_menu_item_url', '_menu_item_orphaned', 'nav_menu_recently_edited');

