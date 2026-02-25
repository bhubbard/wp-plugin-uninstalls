-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('corvuspay_settings_version', 'cpsi_gateway', 'woocommerce_cpsi_settings', 'woocommerce_corvuspay_settings', 'woocommerce_price_num_decimals');

