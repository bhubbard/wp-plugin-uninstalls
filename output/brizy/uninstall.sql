-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brizy_prefix', 'brizy-social-title', 'brizy-social-description', 'brizy-custom-css', 'brizy-header-injection', 'brizy-footer-injection', 'brizy-social-thumbnail', 'brizy-settings-favicon', 'brizy', 'brizy-regenerate-permalinks', 'active_sitewide_plugins', 'woocommerce_default_customer_address', 'brizy_cloud_editor_versions', 'brizy-notice-rating', 'brizy_admin_notice', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('brizy_post_uid', 'brizy-notice-rating', 'brizy-font-file-type', 'brizy-font-type', 'brizy-font-weight', 'brizy_attachment_focal_point', 'brizy-rules', 'brizy-template-rules', 'brizy', 'ast-advanced-hook-layout', '_wp_attachment_image_alt', 'brizy_attachment_uid', 'brizy_data', 'brizy_uid', '_menu_item_target', '_menu_item_xfn', '_menu_item_object', '_menu_item_object_id', 'brizy-form-upload', '_wp_page_template', 'brizy-cloud-update-required', '_edit_lock', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('brizy_post_uid', 'brizy-notice-rating', 'brizy-font-file-type', 'brizy-font-type', 'brizy-font-weight', 'brizy_attachment_focal_point', 'brizy-rules', 'brizy-template-rules', 'brizy', 'ast-advanced-hook-layout', '_wp_attachment_image_alt', 'brizy_attachment_uid', 'brizy_data', 'brizy_uid', '_menu_item_target', '_menu_item_xfn', '_menu_item_object', '_menu_item_object_id', 'brizy-form-upload', '_wp_page_template', 'brizy-cloud-update-required', '_edit_lock', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('brizy_post_uid', 'brizy-notice-rating', 'brizy-font-file-type', 'brizy-font-type', 'brizy-font-weight', 'brizy_attachment_focal_point', 'brizy-rules', 'brizy-template-rules', 'brizy', 'ast-advanced-hook-layout', '_wp_attachment_image_alt', 'brizy_attachment_uid', 'brizy_data', 'brizy_uid', '_menu_item_target', '_menu_item_xfn', '_menu_item_object', '_menu_item_object_id', 'brizy-form-upload', '_wp_page_template', 'brizy-cloud-update-required', '_edit_lock', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('brizy_post_uid', 'brizy-notice-rating', 'brizy-font-file-type', 'brizy-font-type', 'brizy-font-weight', 'brizy_attachment_focal_point', 'brizy-rules', 'brizy-template-rules', 'brizy', 'ast-advanced-hook-layout', '_wp_attachment_image_alt', 'brizy_attachment_uid', 'brizy_data', 'brizy_uid', '_menu_item_target', '_menu_item_xfn', '_menu_item_object', '_menu_item_object_id', 'brizy-form-upload', '_wp_page_template', 'brizy-cloud-update-required', '_edit_lock', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'brizy-project-import-backup-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'brizy-project-import-backup-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'brizy-project-import-backup-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'brizy-project-import-backup-%';

