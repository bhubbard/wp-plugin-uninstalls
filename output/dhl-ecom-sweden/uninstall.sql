-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dhl_do_activation_redirect', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_dimension_unit', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tracking_url', 'tracking_number', 'dhl_order_created');
DELETE FROM wp_usermeta WHERE meta_key IN ('tracking_url', 'tracking_number', 'dhl_order_created');
DELETE FROM wp_termmeta WHERE meta_key IN ('tracking_url', 'tracking_number', 'dhl_order_created');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tracking_url', 'tracking_number', 'dhl_order_created');

