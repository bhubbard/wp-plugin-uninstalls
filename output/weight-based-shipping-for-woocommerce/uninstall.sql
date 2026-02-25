-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbs_config', 'wbs_global_methods', 'wbs_settings', 'woocommerce_currency_pos', 'woocommerce_weight_unit', 'wbsng_reviewed', 'woocommerce_dimension_unit', 'wbsng_settings_multicurrency');

