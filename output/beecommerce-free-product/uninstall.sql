-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_free_products_gift_id', '_free_products_auto', '_free_products_min_matching_product_qty', '_free_products_free_product_qty', '_free_products_type', 'minimum_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('_free_products_gift_id', '_free_products_auto', '_free_products_min_matching_product_qty', '_free_products_free_product_qty', '_free_products_type', 'minimum_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('_free_products_gift_id', '_free_products_auto', '_free_products_min_matching_product_qty', '_free_products_free_product_qty', '_free_products_type', 'minimum_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_free_products_gift_id', '_free_products_auto', '_free_products_min_matching_product_qty', '_free_products_free_product_qty', '_free_products_type', 'minimum_amount');

