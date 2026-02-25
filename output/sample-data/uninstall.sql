-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');

