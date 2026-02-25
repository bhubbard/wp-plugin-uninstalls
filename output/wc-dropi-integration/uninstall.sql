-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dropi-woocomerce-autosync_orders', 'dropi-woocomerce-create_product_if_no_exist', 'dropi-woocomerce-deactive_cities_and_departments', 'dropi-woocomerce-sync_prods_stock', 'dropi-woocomerce-token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dropi_product', '_dropi_token', '_dropi_variation', '_dropi_token_store', '_dropi_product_id', '_is_dropi_order', '_dropi_order_id', 'shipping_guide', '_price', '_regular_price', '_sku', '_stock', '_manage_stock', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dropi_product', '_dropi_token', '_dropi_variation', '_dropi_token_store', '_dropi_product_id', '_is_dropi_order', '_dropi_order_id', 'shipping_guide', '_price', '_regular_price', '_sku', '_stock', '_manage_stock', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dropi_product', '_dropi_token', '_dropi_variation', '_dropi_token_store', '_dropi_product_id', '_is_dropi_order', '_dropi_order_id', 'shipping_guide', '_price', '_regular_price', '_sku', '_stock', '_manage_stock', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dropi_product', '_dropi_token', '_dropi_variation', '_dropi_token_store', '_dropi_product_id', '_is_dropi_order', '_dropi_order_id', 'shipping_guide', '_price', '_regular_price', '_sku', '_stock', '_manage_stock', '_sale_price');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

