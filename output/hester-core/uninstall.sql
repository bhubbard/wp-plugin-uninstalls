-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shopwell_builder_enable', 'hester_wpforms_imported_ids', 'wpforms_settings', 'sidebars_widgets', 'elementor_active_kit', 'dismissed-hester_info_woocommerce', 'fresh_site', 'hester_check_plugin_update', 'hester_core_demo_templates', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', '_menu_item_mega', '_menu_item_mega_grid', '_menu_item_mega_tab', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', '_menu_item_mega', '_menu_item_mega_grid', '_menu_item_mega_tab', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', '_menu_item_mega', '_menu_item_mega_grid', '_menu_item_mega_tab', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', '_menu_item_mega', '_menu_item_mega_grid', '_menu_item_mega_tab', '_menu_item_menu_item_parent', '_thumbnail_id');

