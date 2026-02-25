-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'templatespare_custom_post_images', 'templatespare_use_images_in_content', 'templatespare_use_images_in_featued', 'templatespare_wizard_next_step', 'templatespare_wizard_category_value', 'templatespare_image_upload_cache', 'templatespare_uploaded_image_ids', 'sidebars_widgets', 'nav_menus_created_posts', 'wp_css', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'AFTMLS_importer_data', 'wc_attribute_taxonomies', 'theme_roots', 'templatespare-kit_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_wp_page_template', '_wp_attachment_image_alt', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_wp_page_template', '_wp_attachment_image_alt', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_wp_page_template', '_wp_attachment_image_alt', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_wp_page_template', '_wp_attachment_image_alt', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');

