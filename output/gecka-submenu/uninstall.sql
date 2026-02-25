-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gecka-submenu-pro-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_autopopulate', '_menu_item_autopopulate_type', '_menu_item_showsub');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_autopopulate', '_menu_item_autopopulate_type', '_menu_item_showsub');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_autopopulate', '_menu_item_autopopulate_type', '_menu_item_showsub');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_autopopulate', '_menu_item_autopopulate_type', '_menu_item_showsub');

