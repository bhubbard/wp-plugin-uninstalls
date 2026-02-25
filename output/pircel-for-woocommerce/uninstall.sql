-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pircel_sizes_options', 'pircel_mapping_options', 'pircel_options', 'woocommerce_store_id', 'pircel_tools_options', 'active_sitewide_plugins', 'wc_shipping_method_count', 'wc_shipping_method_count_legacy');
DELETE FROM wp_options WHERE option_name LIKE 'pircel_shipment_%';
DELETE FROM wp_options WHERE option_name LIKE 'pircel_shipment_for_%';

