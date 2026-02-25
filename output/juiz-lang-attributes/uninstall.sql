-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_langattr', '_menu_item_hreflang', '_juizl-hreflang');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_langattr', '_menu_item_hreflang', '_juizl-hreflang');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_langattr', '_menu_item_hreflang', '_juizl-hreflang');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_langattr', '_menu_item_hreflang', '_juizl-hreflang');

