-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_shiprocket_woocommerce_shipping_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

