-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nami_real_token_backup', 'nami_order_type', 'nami_inner_shipping_time', 'nami_preparation_time', 'nami_multi_shipping', 'nami_include_price', 'nami_warehouses_sync', 'nami_inter_warehouse', 'nami_generated_hash_code', 'nami_generated_order_id', 'nami_real_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('warehouse_address', 'nami_warehouse_city', 'nami_warehouse_country', '_sku', '_width', '_height', '_length', 'nami_generated_order_id', '_warehouse_stock_updates', 'successful_order_response', 'nami_warehouse_address', 'nami_warehouse_zip');
DELETE FROM wp_usermeta WHERE meta_key IN ('warehouse_address', 'nami_warehouse_city', 'nami_warehouse_country', '_sku', '_width', '_height', '_length', 'nami_generated_order_id', '_warehouse_stock_updates', 'successful_order_response', 'nami_warehouse_address', 'nami_warehouse_zip');
DELETE FROM wp_termmeta WHERE meta_key IN ('warehouse_address', 'nami_warehouse_city', 'nami_warehouse_country', '_sku', '_width', '_height', '_length', 'nami_generated_order_id', '_warehouse_stock_updates', 'successful_order_response', 'nami_warehouse_address', 'nami_warehouse_zip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('warehouse_address', 'nami_warehouse_city', 'nami_warehouse_country', '_sku', '_width', '_height', '_length', 'nami_generated_order_id', '_warehouse_stock_updates', 'successful_order_response', 'nami_warehouse_address', 'nami_warehouse_zip');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_warehouse_stock_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_warehouse_stock_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_warehouse_stock_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_warehouse_stock_%';

