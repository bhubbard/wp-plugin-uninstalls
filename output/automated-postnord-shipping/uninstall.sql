-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'hitshipo_pn_working_status', 'hitshipo_pn_main_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency', 'woocommerce_feature_product_block_editor_enabled', 'hit_multi_vendor', 'hitshipo_pn_nonce_temp');
DELETE FROM wp_options WHERE option_name LIKE 'hitshipo_pn_ex_rate%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_pn_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'hit_pn_status_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pn_address', 'hitshipo_pn_vendor_settings', 'hits_pn_hs_code', 'hits_pn_country_of_origin', 'hits_pn_product_description', 'hits_pn_cc');
DELETE FROM wp_usermeta WHERE meta_key IN ('pn_address', 'hitshipo_pn_vendor_settings', 'hits_pn_hs_code', 'hits_pn_country_of_origin', 'hits_pn_product_description', 'hits_pn_cc');
DELETE FROM wp_termmeta WHERE meta_key IN ('pn_address', 'hitshipo_pn_vendor_settings', 'hits_pn_hs_code', 'hits_pn_country_of_origin', 'hits_pn_product_description', 'hits_pn_cc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pn_address', 'hitshipo_pn_vendor_settings', 'hits_pn_hs_code', 'hits_pn_country_of_origin', 'hits_pn_product_description', 'hits_pn_cc');

