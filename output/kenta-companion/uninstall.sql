-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'kcmp_dynamic_css_cached_version', 'kcmp_customizer_default_settings_version', 'kenta_active_template', 'kb_sync_kenta_theme', 'sidebars_widgets', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'kcmp_demos', 'kcmp_demos_version', 'pt_importer_data', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_is_custom_header', '_menu_item_url', '_elementor_data', '_elementor_page_settings', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_is_custom_header', '_menu_item_url', '_elementor_data', '_elementor_page_settings', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_is_custom_header', '_menu_item_url', '_elementor_data', '_elementor_page_settings', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_wp_attachment_is_custom_header', '_menu_item_url', '_elementor_data', '_elementor_page_settings', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user');

