-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'woocommerce_feature_product_block_editor_enabled', 'a2z_dpd_main_settings', 'hit_multi_vendor', 'a2z_dpd_express_working_status', 'a2z_usps_main_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'hitshipo_dpd_express_nonce_temp');
DELETE FROM wp_options WHERE option_name LIKE 'hit_dpd_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_dpd_pickup_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_dpd_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_dpd_return_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_dpd_return_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'a2z_dpd_ex_rate%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hits_dpd_cc', 'a2z_dpd_vendor_settings', 'dpd_express_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('hits_dpd_cc', 'a2z_dpd_vendor_settings', 'dpd_express_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('hits_dpd_cc', 'a2z_dpd_vendor_settings', 'dpd_express_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hits_dpd_cc', 'a2z_dpd_vendor_settings', 'dpd_express_address');

