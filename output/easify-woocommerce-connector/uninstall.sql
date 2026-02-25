-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easify_options_setup', 'easify_options_orders', 'easify_options_customers', 'easify_options_shipping', 'easify_options_payment', 'easify_options_logging', 'woocommerce_email_from_address', 'woocommerce_free_shipping_settings', 'woocommerce_local_delivery_settings', 'woocommerce_flat_rate_settings', 'woocommerce_international_delivery_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_price', '_regular_price', '_sale_price', '_sale_price_dates_from	', '_sale_price_dates_to', '_tax_status', '_tax_class', '_stock_status', '_manage_stock', '_downloadable', '_virtual', '_visibility', '_sold_individually', '_backorders', '_stock', '_weight', '_length', '_width', '_height', '_purchase_note', '_featured', '_product_attributes', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_price', '_regular_price', '_sale_price', '_sale_price_dates_from	', '_sale_price_dates_to', '_tax_status', '_tax_class', '_stock_status', '_manage_stock', '_downloadable', '_virtual', '_visibility', '_sold_individually', '_backorders', '_stock', '_weight', '_length', '_width', '_height', '_purchase_note', '_featured', '_product_attributes', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_price', '_regular_price', '_sale_price', '_sale_price_dates_from	', '_sale_price_dates_to', '_tax_status', '_tax_class', '_stock_status', '_manage_stock', '_downloadable', '_virtual', '_visibility', '_sold_individually', '_backorders', '_stock', '_weight', '_length', '_width', '_height', '_purchase_note', '_featured', '_product_attributes', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_price', '_regular_price', '_sale_price', '_sale_price_dates_from	', '_sale_price_dates_to', '_tax_status', '_tax_class', '_stock_status', '_manage_stock', '_downloadable', '_virtual', '_visibility', '_sold_individually', '_backorders', '_stock', '_weight', '_length', '_width', '_height', '_purchase_note', '_featured', '_product_attributes', '_thumbnail_id');

