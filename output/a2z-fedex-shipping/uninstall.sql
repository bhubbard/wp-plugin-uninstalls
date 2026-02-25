-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shipi_migration_done', 'woocommerce_custom_orders_table_enabled', 'woocommerce_feature_product_block_editor_enabled', 'hitshippo_fedex_main_settings', 'hit_multi_vendor', 'hitshipo_fedex_working_status', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'hitshipo_fedex_express_nonce_temp');
DELETE FROM wp_options WHERE option_name LIKE 'hitshippo_fedex_ex_rate%';
DELETE FROM wp_options WHERE option_name LIKE 'hitshipo_fedex_rest_auth_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fedex_address', 'hits_fedex_cc', 'hits_fedex_label_dec', 'hitshippo_fedex_vendor_settings', '_shipi_custom_val_rates');
DELETE FROM wp_usermeta WHERE meta_key IN ('fedex_address', 'hits_fedex_cc', 'hits_fedex_label_dec', 'hitshippo_fedex_vendor_settings', '_shipi_custom_val_rates');
DELETE FROM wp_termmeta WHERE meta_key IN ('fedex_address', 'hits_fedex_cc', 'hits_fedex_label_dec', 'hitshippo_fedex_vendor_settings', '_shipi_custom_val_rates');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fedex_address', 'hits_fedex_cc', 'hits_fedex_label_dec', 'hitshippo_fedex_vendor_settings', '_shipi_custom_val_rates');

