-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('b1_database_version', 'b1-accounting', 'woocommerce_prices_include_tax', 'woocommerce_calc_taxes', 'woocommerce_custom_orders_table_enabled', 'woocommerce_custom_orders_table_data_sync_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock', '_stock_status', '_price', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock', '_stock_status', '_price', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock', '_stock_status', '_price', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock', '_stock_status', '_price', '_regular_price');

