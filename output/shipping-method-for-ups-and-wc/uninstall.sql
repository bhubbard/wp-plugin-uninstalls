-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ups_config_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

