-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themegrill_demo_importer_activated_id', 'elementor_active_kit', 'widget_block', 'themegrill_starter_template_theme_mods', 'elementor_load_fa4_shim', 'siteorigin_panels_settings', 'masteriyo_active_addons', '_magazine_blocks_settings', '_blockart_settings', 'themegrill_demo_importer_mapping', 'themegrill_demo_importer_posts_with_evf', 'themegrill_demo_importer_imported_posts', 'themegrill_demo_importer_imported_terms', 'sidebars_widgets', 'themegrill_demo_importer_demos', '_wc_activation_redirect', '_masteriyo_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_page_settings', '_menu_item_url', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_page_settings', '_menu_item_url', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_page_settings', '_menu_item_url', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_page_settings', '_menu_item_url', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_thumbnail_id');

