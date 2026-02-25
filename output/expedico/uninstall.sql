-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'expedico_carrier_prices', 'woocommerce_tax_display_cart');

