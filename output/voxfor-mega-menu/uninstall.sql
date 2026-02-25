-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voxfor_mega_menu_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_voxfor_mega_menu_data', '_voxfor_mega_menu_enabled', '_voxfor_mega_menu_columns', '_voxfor_mega_menu_width', '_voxfor_mega_menu_icon', '_voxfor_mega_menu_badge', '_voxfor_mega_menu_content', 'voxfor_menu_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_voxfor_mega_menu_data', '_voxfor_mega_menu_enabled', '_voxfor_mega_menu_columns', '_voxfor_mega_menu_width', '_voxfor_mega_menu_icon', '_voxfor_mega_menu_badge', '_voxfor_mega_menu_content', 'voxfor_menu_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_voxfor_mega_menu_data', '_voxfor_mega_menu_enabled', '_voxfor_mega_menu_columns', '_voxfor_mega_menu_width', '_voxfor_mega_menu_icon', '_voxfor_mega_menu_badge', '_voxfor_mega_menu_content', 'voxfor_menu_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_voxfor_mega_menu_data', '_voxfor_mega_menu_enabled', '_voxfor_mega_menu_columns', '_voxfor_mega_menu_width', '_voxfor_mega_menu_icon', '_voxfor_mega_menu_badge', '_voxfor_mega_menu_content', 'voxfor_menu_data');

