-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_redirect_after_add', 'woocommerce_manage_stock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcpb_bundle_products', '_regular_price', '_wcpb_product_sale_price', '_wcpb_show_bundle_on_product', '_wcpb_show_bundle_on_cart', '_wcpb_show_bundle_on_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcpb_bundle_products', '_regular_price', '_wcpb_product_sale_price', '_wcpb_show_bundle_on_product', '_wcpb_show_bundle_on_cart', '_wcpb_show_bundle_on_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcpb_bundle_products', '_regular_price', '_wcpb_product_sale_price', '_wcpb_show_bundle_on_product', '_wcpb_show_bundle_on_cart', '_wcpb_show_bundle_on_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcpb_bundle_products', '_regular_price', '_wcpb_product_sale_price', '_wcpb_show_bundle_on_product', '_wcpb_show_bundle_on_cart', '_wcpb_show_bundle_on_order');

