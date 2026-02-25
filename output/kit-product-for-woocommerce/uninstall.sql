-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kit_pricing', '_show_customer_saved_price', '_kit_from_cat_product', '_wckp_cat_ids', '_wckp_product_ids', '_min_kit_quantity', '_max_kit_quantity');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kit_pricing', '_show_customer_saved_price', '_kit_from_cat_product', '_wckp_cat_ids', '_wckp_product_ids', '_min_kit_quantity', '_max_kit_quantity');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kit_pricing', '_show_customer_saved_price', '_kit_from_cat_product', '_wckp_cat_ids', '_wckp_product_ids', '_min_kit_quantity', '_max_kit_quantity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kit_pricing', '_show_customer_saved_price', '_kit_from_cat_product', '_wckp_cat_ids', '_wckp_product_ids', '_min_kit_quantity', '_max_kit_quantity');

