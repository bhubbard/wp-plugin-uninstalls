-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipping_tax_class', 'woocommerce_weight_unit', 'woocommerce_ship_to_destination', 'woocommerce_dimension_unit', 'shopup_venipak_shipping_settings');

