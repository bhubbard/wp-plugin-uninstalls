-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_menu_item_socialicn', '_menu_item_subtitle', '_menu_item_icon_size', '_menu_item_custom_width_size', '_menu_item_custom_height_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_menu_item_socialicn', '_menu_item_subtitle', '_menu_item_icon_size', '_menu_item_custom_width_size', '_menu_item_custom_height_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_menu_item_socialicn', '_menu_item_subtitle', '_menu_item_icon_size', '_menu_item_custom_width_size', '_menu_item_custom_height_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_menu_item_socialicn', '_menu_item_subtitle', '_menu_item_icon_size', '_menu_item_custom_width_size', '_menu_item_custom_height_size');

