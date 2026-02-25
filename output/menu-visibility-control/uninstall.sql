-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mvc_notice_dismissed', '_menu_item_mvc_state', '_menu_item_mvc_roles', '_menu_item_mvc_device', '_menu_item_mvc_page_mode', '_menu_item_mvc_pages');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mvc_notice_dismissed', '_menu_item_mvc_state', '_menu_item_mvc_roles', '_menu_item_mvc_device', '_menu_item_mvc_page_mode', '_menu_item_mvc_pages');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mvc_notice_dismissed', '_menu_item_mvc_state', '_menu_item_mvc_roles', '_menu_item_mvc_device', '_menu_item_mvc_page_mode', '_menu_item_mvc_pages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mvc_notice_dismissed', '_menu_item_mvc_state', '_menu_item_mvc_roles', '_menu_item_mvc_device', '_menu_item_mvc_page_mode', '_menu_item_mvc_pages');

