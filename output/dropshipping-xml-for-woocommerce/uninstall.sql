-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_prices_include_tax', 'woocommerce_tax_based_on', 'woocommerce_tax_round_at_subtotal', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

