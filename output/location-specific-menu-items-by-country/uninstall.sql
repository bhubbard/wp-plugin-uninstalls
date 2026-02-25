-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locations', 'hide_show', '_menu_item_menu_item_parent');
DELETE FROM wp_usermeta WHERE meta_key IN ('locations', 'hide_show', '_menu_item_menu_item_parent');
DELETE FROM wp_termmeta WHERE meta_key IN ('locations', 'hide_show', '_menu_item_menu_item_parent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locations', 'hide_show', '_menu_item_menu_item_parent');

