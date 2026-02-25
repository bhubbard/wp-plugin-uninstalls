-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_permalinks_flushed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eo_menu_minimize', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eo_menu_minimize', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eo_menu_minimize', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eo_menu_minimize', '_wp_attached_file');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user_level';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user_level';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user_level';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user_level';

