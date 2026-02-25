-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DROPSHIPPING_ROMANIA_AVEX_VERSION', 'avex_the_dropshipping_romania_avex_activation_is_done');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_avex_order_id', '_avex_order_status', '_regular_price', '_sale_price', '_sku', '_weight', '_avex_sales_price', '_avex_avex_price', '_avex_brand', '_avex_ean', '_avex_image', '_avex_images', '_avex_category', '_avex_imported_product', '_price', '_stock', '_avex_order_sent', '_avex_order_awb_file', '_avex_order_awb_file_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_avex_order_id', '_avex_order_status', '_regular_price', '_sale_price', '_sku', '_weight', '_avex_sales_price', '_avex_avex_price', '_avex_brand', '_avex_ean', '_avex_image', '_avex_images', '_avex_category', '_avex_imported_product', '_price', '_stock', '_avex_order_sent', '_avex_order_awb_file', '_avex_order_awb_file_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_avex_order_id', '_avex_order_status', '_regular_price', '_sale_price', '_sku', '_weight', '_avex_sales_price', '_avex_avex_price', '_avex_brand', '_avex_ean', '_avex_image', '_avex_images', '_avex_category', '_avex_imported_product', '_price', '_stock', '_avex_order_sent', '_avex_order_awb_file', '_avex_order_awb_file_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_avex_order_id', '_avex_order_status', '_regular_price', '_sale_price', '_sku', '_weight', '_avex_sales_price', '_avex_avex_price', '_avex_brand', '_avex_ean', '_avex_image', '_avex_images', '_avex_category', '_avex_imported_product', '_price', '_stock', '_avex_order_sent', '_avex_order_awb_file', '_avex_order_awb_file_url');

