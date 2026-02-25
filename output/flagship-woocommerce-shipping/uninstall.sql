-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afb2b_shipping', 'woocommerce_default_country', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_flagship_shipping_method_settings', 'woocommerce_flat_rate_settings', 'woocommerce_flat_rate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('flagship_shipping_shipment_tracking_number', 'flagship_shipping_courier_name', 'order_ids', 'id', 'confirmation', 'boxes', 'weight', 'courier', 'pickup_date', 'from', 'until', 'cancelled', '_price', '_regular_price', '_sale_price', '_sku', '_manage_stock', '_tax_status', '_downloadable', '_virtual', '_visibility', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('flagship_shipping_shipment_tracking_number', 'flagship_shipping_courier_name', 'order_ids', 'id', 'confirmation', 'boxes', 'weight', 'courier', 'pickup_date', 'from', 'until', 'cancelled', '_price', '_regular_price', '_sale_price', '_sku', '_manage_stock', '_tax_status', '_downloadable', '_virtual', '_visibility', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('flagship_shipping_shipment_tracking_number', 'flagship_shipping_courier_name', 'order_ids', 'id', 'confirmation', 'boxes', 'weight', 'courier', 'pickup_date', 'from', 'until', 'cancelled', '_price', '_regular_price', '_sale_price', '_sku', '_manage_stock', '_tax_status', '_downloadable', '_virtual', '_visibility', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('flagship_shipping_shipment_tracking_number', 'flagship_shipping_courier_name', 'order_ids', 'id', 'confirmation', 'boxes', 'weight', 'courier', 'pickup_date', 'from', 'until', 'cancelled', '_price', '_regular_price', '_sale_price', '_sku', '_manage_stock', '_tax_status', '_downloadable', '_virtual', '_visibility', '_stock_status');

