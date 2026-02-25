-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hit_cp_auto_working_status', 'hit_cp_auto_main_settings', 'woocommerce_currency', 'woocommerce_custom_orders_table_enabled', 'woocommerce_feature_product_block_editor_enabled', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'hit_canadapost_auto_nonce_temp');
DELETE FROM wp_options WHERE option_name LIKE 'hit_cp_auto_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_cp_auto_status_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hits_cp_hs_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('hits_cp_hs_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('hits_cp_hs_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hits_cp_hs_code');

