-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qube_tools_plugin_do_activation_redirect', 'qube_tools_version', 'qube_tools_file_download_method', 'qube_tools_upload_dir_created', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'elementor_container_width', 'sidebars_widgets', 'qube_tools_installing');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%';

