-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_active_kit', 'smartocs_cleanup_last_run', 'sidebars_widgets', 'smartocs_api_demo_cache_keys', 'smartocs_importer_data', 'smartocs_importer_data_failed_attachment_imports', 'smartocs_import_menu_mapping', 'smartocs_import_posts_with_nav_block', 'smartocs_cache_cleared_notice', 'wc_attribute_taxonomies', 'pt_importer_data');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', '_wp_attachment_is_custom_header', '_elementor_page_settings', '_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_elementor_css', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', '_wp_attachment_is_custom_header', '_elementor_page_settings', '_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_elementor_css', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', '_wp_attachment_is_custom_header', '_elementor_page_settings', '_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_elementor_css', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', '_wp_attachment_is_custom_header', '_elementor_page_settings', '_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_elementor_css', 'first_name', 'last_name');

