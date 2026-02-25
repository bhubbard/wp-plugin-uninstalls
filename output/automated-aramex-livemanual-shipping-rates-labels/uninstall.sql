-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'woocommerce_feature_product_block_editor_enabled', 'a2z_aramex_main_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'hit_multi_vendor', 'a2z_aramex_express_working_status', 'hitshipo_aramex_express_nonce_temp');
DELETE FROM wp_options WHERE option_name LIKE 'hit_aramex_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_aramex_pickup_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'a2z_aramex_ex_rate%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_aramex_status_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hits_aramex_cc', 'a2z_aramex_vendor_settings', 'aramex_express_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('hits_aramex_cc', 'a2z_aramex_vendor_settings', 'aramex_express_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('hits_aramex_cc', 'a2z_aramex_vendor_settings', 'aramex_express_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hits_aramex_cc', 'a2z_aramex_vendor_settings', 'aramex_express_address');

