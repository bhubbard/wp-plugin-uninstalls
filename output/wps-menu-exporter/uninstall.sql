-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rss_language', 'wps_plugins_adds');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_menu_item_object');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_menu_item_object');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_menu_item_object');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_type', '_menu_item_object_id', '_menu_item_object');

