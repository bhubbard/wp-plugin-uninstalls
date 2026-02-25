-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtb_active_theme_id', 'gutenverse-license', 'gtb_plugin_notice_flag', 'gutenverse-companion-imported-options', 'gtb_theme_info_altered_3');
DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-variable-font-%';
DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-color-import-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pattern_category', '_pattern_theme_id', '_pattern_sync', '_wp_page_template', '_gtb_page_preview', '_gtb_page_image', '_gtb_page_is_homepage', '_gtb_page_order', '_wp_attached_file', '_import_source', '_gtb_page_theme_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pattern_category', '_pattern_theme_id', '_pattern_sync', '_wp_page_template', '_gtb_page_preview', '_gtb_page_image', '_gtb_page_is_homepage', '_gtb_page_order', '_wp_attached_file', '_import_source', '_gtb_page_theme_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pattern_category', '_pattern_theme_id', '_pattern_sync', '_wp_page_template', '_gtb_page_preview', '_gtb_page_image', '_gtb_page_is_homepage', '_gtb_page_order', '_wp_attached_file', '_import_source', '_gtb_page_theme_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pattern_category', '_pattern_theme_id', '_pattern_sync', '_wp_page_template', '_gtb_page_preview', '_gtb_page_image', '_gtb_page_is_homepage', '_gtb_page_order', '_wp_attached_file', '_import_source', '_gtb_page_theme_id');

