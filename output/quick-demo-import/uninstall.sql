-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_quick_demo_import_imported_demo_id', 'sidebars_widgets', '_quick_demo_import_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'elementor_scheme_%';
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', 'panels_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', 'panels_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', 'panels_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', 'panels_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');

