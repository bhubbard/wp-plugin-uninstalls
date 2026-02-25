-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bootstrap_main_menu_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_object_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_object_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_object_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_object_id');

