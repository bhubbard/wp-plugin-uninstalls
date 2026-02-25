-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_product_shipping_information_global');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woocommerce_hide_product_shipping_information');
DELETE FROM wp_usermeta WHERE meta_key IN ('woocommerce_hide_product_shipping_information');
DELETE FROM wp_termmeta WHERE meta_key IN ('woocommerce_hide_product_shipping_information');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woocommerce_hide_product_shipping_information');

