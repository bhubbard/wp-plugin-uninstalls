-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'woocommerce_tax_based_on', 'holded_api_key', 'holded_api_url', 'holdedwc_sync', 'woocommerce_holdedwc-configpanel_settings', 'holded_log');

