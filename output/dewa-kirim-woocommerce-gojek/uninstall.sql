-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_gojek_settings', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woocommerce_gojek_from_lat', 'woocommerce_gojek_from_lng', 'woocommerce_gojek_from_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('woocommerce_gojek_from_lat', 'woocommerce_gojek_from_lng', 'woocommerce_gojek_from_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('woocommerce_gojek_from_lat', 'woocommerce_gojek_from_lng', 'woocommerce_gojek_from_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woocommerce_gojek_from_lat', 'woocommerce_gojek_from_lng', 'woocommerce_gojek_from_address');

