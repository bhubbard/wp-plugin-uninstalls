-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adh_drag', 'adh_position', 'adh_hidebtn');
DELETE FROM wp_options WHERE option_name LIKE 'adh_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('adh_use_menu_plugin');
DELETE FROM wp_usermeta WHERE meta_key IN ('adh_use_menu_plugin');
DELETE FROM wp_termmeta WHERE meta_key IN ('adh_use_menu_plugin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('adh_use_menu_plugin');

