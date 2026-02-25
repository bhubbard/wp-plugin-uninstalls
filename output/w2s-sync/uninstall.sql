-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'woocommerce_custom_orders_table_data_sync_is_enabled', 'woocommerce_order_number_start', 'woocommerce_order_number_prefix', 'woocommerce_order_number_suffix', 'w2ssyn_sync_config', 'w2ssyn_last_sync_time', 'w2ssyn_shopify_store_name', 'w2ssyn_shopify_access_token', 'w2ssyn_consumer_key', 'w2ssyn_consumer_secret', 'w2ssyn_custom_fields_mapping', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', '_global_unique_id', '_alg_ean', '_ean', '_gtin', '_isbn', '_upc', '_barcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', '_global_unique_id', '_alg_ean', '_ean', '_gtin', '_isbn', '_upc', '_barcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', '_global_unique_id', '_alg_ean', '_ean', '_gtin', '_isbn', '_upc', '_barcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', '_global_unique_id', '_alg_ean', '_ean', '_gtin', '_isbn', '_upc', '_barcode');

