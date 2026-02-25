-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'woocommerce_feature_product_block_editor_enabled', 'hit_ups_auto_main_settings', 'hit_multi_vendor', 'hitshipo_ups_working_status', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'hitshipo_ups_rest_auth_token_default', 'hitshipo_ups_nonce_temp');
DELETE FROM wp_options WHERE option_name LIKE 'hit_ups_auto_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_ups_auto_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_ups_auto_return_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_ups_auto_return_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'hitshipo_ups_rest_auth_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hit_ups_auto_vendor_settings', 'hit_ups_auto_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('hit_ups_auto_vendor_settings', 'hit_ups_auto_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('hit_ups_auto_vendor_settings', 'hit_ups_auto_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hit_ups_auto_vendor_settings', 'hit_ups_auto_address');

