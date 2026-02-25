-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_rocketfuel_gateway_settings', 'woocommerce_custom_orders_table_enabled');
DELETE FROM wp_options WHERE option_name LIKE 'rkfl_partial_payment_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'rkfl_suppress_release_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rocketfuel_temp_orderid');
DELETE FROM wp_usermeta WHERE meta_key IN ('rocketfuel_temp_orderid');
DELETE FROM wp_termmeta WHERE meta_key IN ('rocketfuel_temp_orderid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rocketfuel_temp_orderid');

