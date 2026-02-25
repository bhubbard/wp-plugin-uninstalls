-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_specific_allowed_countries', 'woocommerce_default_country', 'wps_countries_updated', 'woocommerce_shipping_tax_class');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_pickup_stores', '_shipping_pickup_store_id', '_exclude_store', 'city', 'phone', 'waze', 'map', 'description', 'address', 'store_order_email', 'enable_order_email', 'store_country', 'store_shipping_cost', 'taxable_store');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_pickup_stores', '_shipping_pickup_store_id', '_exclude_store', 'city', 'phone', 'waze', 'map', 'description', 'address', 'store_order_email', 'enable_order_email', 'store_country', 'store_shipping_cost', 'taxable_store');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_pickup_stores', '_shipping_pickup_store_id', '_exclude_store', 'city', 'phone', 'waze', 'map', 'description', 'address', 'store_order_email', 'enable_order_email', 'store_country', 'store_shipping_cost', 'taxable_store');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_pickup_stores', '_shipping_pickup_store_id', '_exclude_store', 'city', 'phone', 'waze', 'map', 'description', 'address', 'store_order_email', 'enable_order_email', 'store_country', 'store_shipping_cost', 'taxable_store');

