-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_similar_product_shop_visibility', 'ced_similar_product_heading', 'ced_similar_product_count', 'ced_similar_product_css', 'ced_similar_product_product_page_visibility', 'ced_similar_product_cart_visibility');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ced_similar_product_discount', '_similar_product_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ced_similar_product_discount', '_similar_product_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ced_similar_product_discount', '_similar_product_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ced_similar_product_discount', '_similar_product_ids');

