-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items', 'th_advance_product_search');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', '_menu_item_thaps_layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', '_menu_item_thaps_layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', '_menu_item_thaps_layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', '_menu_item_thaps_layout');

