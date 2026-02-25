-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('item_details_page', 'desert_demo_installed', 'sidebars_widgets', 'atua_media_id', 'widget_archives', 'widget_search', 'chromax_media_id', 'corpiva_media_id', 'cosmobit_media_id', 'softme_media_id');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_customizer_import';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_menu_item_menu_item_parent', '_thumbnail_id');

