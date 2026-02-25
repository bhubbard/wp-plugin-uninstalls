-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version', 'woocommerce_db_version', 'woocommerce_price_num_decimals', 'woocommerce_currency_pos', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_currency');
DELETE FROM wp_options WHERE option_name LIKE '%_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_per_page_default';
DELETE FROM wp_options WHERE option_name LIKE '%_activated_plugin_error';

