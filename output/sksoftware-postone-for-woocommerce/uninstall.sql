-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'sksoftware_postone_for_woocommerce_is_authenticated', 'sksoftware_postone_for_woocommerce_auth_failed_after_save', 'woocommerce_currency', 'woocommerce_default_country', 'woocommerce_calc_taxes', 'restrict_adding_same_tracking');

