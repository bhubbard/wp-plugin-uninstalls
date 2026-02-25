-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_design', '_menu_item_width', '_menu_item_height', '_menu_item_block', '_menu_item_behavior', '_menu_item_icon-type', '_menu_item_icon-id', '_menu_item_icon-width', '_menu_item_icon-height', '_menu_item_icon-html', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_design', '_menu_item_width', '_menu_item_height', '_menu_item_block', '_menu_item_behavior', '_menu_item_icon-type', '_menu_item_icon-id', '_menu_item_icon-width', '_menu_item_icon-height', '_menu_item_icon-html', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_design', '_menu_item_width', '_menu_item_height', '_menu_item_block', '_menu_item_behavior', '_menu_item_icon-type', '_menu_item_icon-id', '_menu_item_icon-width', '_menu_item_icon-height', '_menu_item_icon-html', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_design', '_menu_item_width', '_menu_item_height', '_menu_item_block', '_menu_item_behavior', '_menu_item_icon-type', '_menu_item_icon-id', '_menu_item_icon-width', '_menu_item_icon-height', '_menu_item_icon-html', '_wp_attachment_image_alt');

