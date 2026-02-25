-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_my_custom_add_product_to_cart');
DELETE FROM wp_usermeta WHERE meta_key IN ('_my_custom_add_product_to_cart');
DELETE FROM wp_termmeta WHERE meta_key IN ('_my_custom_add_product_to_cart');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_my_custom_add_product_to_cart');

