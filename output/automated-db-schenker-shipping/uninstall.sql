-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hits_dbs_main_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'woocommerce_custom_orders_table_enabled', 'woocommerce_feature_product_block_editor_enabled', 'hit_multi_vendor');
DELETE FROM wp_options WHERE option_name LIKE 'hits_dbs_ex_rate%';
DELETE FROM wp_options WHERE option_name LIKE 'hits_dbs_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hits_dbs_status_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hits_dbs_address', 'hits_dbs_vendor_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('hits_dbs_address', 'hits_dbs_vendor_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('hits_dbs_address', 'hits_dbs_vendor_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hits_dbs_address', 'hits_dbs_vendor_settings');

