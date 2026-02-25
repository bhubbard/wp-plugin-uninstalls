-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_storeya_config', 'woocommerce_currency', 'woocommerce_weight_unit', 'woocommerce_base_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woocommerce_storeya_data', '_sku', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woocommerce_storeya_data', '_sku', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woocommerce_storeya_data', '_sku', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woocommerce_storeya_data', '_sku', '_thumbnail_id');

