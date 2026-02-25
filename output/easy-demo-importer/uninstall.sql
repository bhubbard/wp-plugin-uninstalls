-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sd_edi_plugin_deactivate_notice', 'sd_edi_import_success', 'default_product_cat', 'elementor_active_kit', 'elementor_cpt_support', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'elementor_unfiltered_files_upload', 'sidebars_widgets', 'sd_edi_settings', 'update_plugins', '_wc_activation_redirect', 'sd_edi_installing', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock_status', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock_status', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock_status', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock_status', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');

