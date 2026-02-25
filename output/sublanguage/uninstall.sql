-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rtl', '_menu_item_menu_item_parent', '_menu_item_type', '_menu_item_object_id', '_menu_item_object', '_menu_item_classes', 'sublanguage_hide', '_menu_item_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('rtl', '_menu_item_menu_item_parent', '_menu_item_type', '_menu_item_object_id', '_menu_item_object', '_menu_item_classes', 'sublanguage_hide', '_menu_item_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('rtl', '_menu_item_menu_item_parent', '_menu_item_type', '_menu_item_object_id', '_menu_item_object', '_menu_item_classes', 'sublanguage_hide', '_menu_item_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rtl', '_menu_item_menu_item_parent', '_menu_item_type', '_menu_item_object_id', '_menu_item_object', '_menu_item_classes', 'sublanguage_hide', '_menu_item_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%sublanguage_hide';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%sublanguage_hide';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%sublanguage_hide';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%sublanguage_hide';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%post_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%post_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%post_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%slug';

