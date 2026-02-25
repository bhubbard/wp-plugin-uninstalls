-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vayu_blocks_settings', 'vayu_blocks_options', 'themehunk-settings', 'themehunk_recent_import_log_file', 'sidebars_widgets', 'vayu_remote_manifest');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vayu_source_url', '_sale_price', '_wp_attachment_image_alt', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vayu_source_url', '_sale_price', '_wp_attachment_image_alt', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vayu_source_url', '_sale_price', '_wp_attachment_image_alt', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vayu_source_url', '_sale_price', '_wp_attachment_image_alt', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'thumbnail_id');

