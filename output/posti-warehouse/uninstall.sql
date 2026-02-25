-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posti_wh_api_auth', 'posti_wh_api_warehouses', 'woocommerce_default_country', 'woocommerce_store_postcode', 'posti_warehouse_db_version', 'woocommerce_store_address', 'woocommerce_store_city', 'posti_wh_options', 'woocommerce_posti_warehouse_settings', 'posti_warehouse_shipping_methods');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_posti_wh_warehouse', 'is_customer_note', '_ean', '_posti_wh_warehouse_single', '_posti_last_sync', '_posti_wh_distribution', '_wholesale_price', '_posti_fragile', '_posti_lq', '_posti_large', '_posti_id', '_posti_wh_country_of_origin', '_posti_wh_hs_tariff_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_posti_wh_warehouse', 'is_customer_note', '_ean', '_posti_wh_warehouse_single', '_posti_last_sync', '_posti_wh_distribution', '_wholesale_price', '_posti_fragile', '_posti_lq', '_posti_large', '_posti_id', '_posti_wh_country_of_origin', '_posti_wh_hs_tariff_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_posti_wh_warehouse', 'is_customer_note', '_ean', '_posti_wh_warehouse_single', '_posti_last_sync', '_posti_wh_distribution', '_wholesale_price', '_posti_fragile', '_posti_lq', '_posti_large', '_posti_id', '_posti_wh_country_of_origin', '_posti_wh_hs_tariff_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_posti_wh_warehouse', 'is_customer_note', '_ean', '_posti_wh_warehouse_single', '_posti_last_sync', '_posti_wh_distribution', '_wholesale_price', '_posti_fragile', '_posti_lq', '_posti_large', '_posti_id', '_posti_wh_country_of_origin', '_posti_wh_hs_tariff_number');

