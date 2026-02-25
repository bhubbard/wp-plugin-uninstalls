-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode');
DELETE FROM wp_options WHERE option_name LIKE '%_wizard_done';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_shipping_methods';
DELETE FROM wp_options WHERE option_name LIKE '%_access_token';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_manifest_orders';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_manifest_orders';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_manifest_orders';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_manifest_orders';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_manifest_pickup_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_manifest_pickup_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_manifest_pickup_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_manifest_pickup_time';

