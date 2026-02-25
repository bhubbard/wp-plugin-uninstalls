-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'sksoftware_speedy_for_woocommerce_is_authenticated', 'sksoftware_speedy_for_woocommerce_client_contracts', 'woocommerce_currency', 'woocommerce_default_country', 'woocommerce_calc_taxes');

