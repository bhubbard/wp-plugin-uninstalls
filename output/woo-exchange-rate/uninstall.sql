-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooer_plugin_version', 'woocommerce_currency', 'woocommerce_currency_pos', 'woocommerce_price_num_decimals');

