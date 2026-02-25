-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'icl_enable_multi_currency', 'woocommerce_price_num_decimals');

