-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('falang', 'falang_wpml_strings', 'active_sitewide_plugins', 'falang_dismissed_notices', 'falang_wc_attributes', 'need_flush', 'widget_falang', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_dismissed_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_dismissed_notices_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_menu_item_object', '_menu_item_classes', '_falang_strings_translations', '_locale', '_falang_menu_item', '_et_pb_use_builder', 'falang_hide', 'language', '_wp_attachment_image_alt', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_menu_item_object', '_menu_item_classes', '_falang_strings_translations', '_locale', '_falang_menu_item', '_et_pb_use_builder', 'falang_hide', 'language', '_wp_attachment_image_alt', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_menu_item_object', '_menu_item_classes', '_falang_strings_translations', '_locale', '_falang_menu_item', '_et_pb_use_builder', 'falang_hide', 'language', '_wp_attachment_image_alt', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_menu_item_object', '_menu_item_classes', '_falang_strings_translations', '_locale', '_falang_menu_item', '_et_pb_use_builder', 'falang_hide', 'language', '_wp_attachment_image_alt', 'description');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%published';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%published';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%published';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%published';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_menu_item_classes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_menu_item_classes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_menu_item_classes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_menu_item_classes';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%falang_hide';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%falang_hide';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%falang_hide';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%falang_hide';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%post_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%post_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%post_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_falang_assoc_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_falang_assoc_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_falang_assoc_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_falang_assoc_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%post_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%post_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%post_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post_title';

