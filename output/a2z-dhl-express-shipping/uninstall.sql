-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'woocommerce_feature_product_block_editor_enabled', 'a2z_dhl_main_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'hit_multi_vendor', 'a2z_dhl_express_working_status', 'a2z_dhl_ex_rate', 'hitshipo_dhl_express_nonce_temp');
DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'a2z_dhl_ex_rate%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_pickup_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_return_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_order_rates_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_return_status_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hits_dhl_cc', 'hits_dhl_cc_inb', 'hits_dhl_export_reason', 'hits_dhl_desc', 'hits_dhl_danger_good_content_id', 'hits_dhl_danger_good_label_description', 'hits_dhl_danger_good_un_code', 'hit_dhl_prod_variation_desc', 'dhl_express_address', 'a2z_dhl_vendor_settings', '_shipi_label_requested');
DELETE FROM wp_usermeta WHERE meta_key IN ('hits_dhl_cc', 'hits_dhl_cc_inb', 'hits_dhl_export_reason', 'hits_dhl_desc', 'hits_dhl_danger_good_content_id', 'hits_dhl_danger_good_label_description', 'hits_dhl_danger_good_un_code', 'hit_dhl_prod_variation_desc', 'dhl_express_address', 'a2z_dhl_vendor_settings', '_shipi_label_requested');
DELETE FROM wp_termmeta WHERE meta_key IN ('hits_dhl_cc', 'hits_dhl_cc_inb', 'hits_dhl_export_reason', 'hits_dhl_desc', 'hits_dhl_danger_good_content_id', 'hits_dhl_danger_good_label_description', 'hits_dhl_danger_good_un_code', 'hit_dhl_prod_variation_desc', 'dhl_express_address', 'a2z_dhl_vendor_settings', '_shipi_label_requested');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hits_dhl_cc', 'hits_dhl_cc_inb', 'hits_dhl_export_reason', 'hits_dhl_desc', 'hits_dhl_danger_good_content_id', 'hits_dhl_danger_good_label_description', 'hits_dhl_danger_good_un_code', 'hit_dhl_prod_variation_desc', 'dhl_express_address', 'a2z_dhl_vendor_settings', '_shipi_label_requested');

