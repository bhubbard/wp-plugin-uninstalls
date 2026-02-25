-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_dimension_unit', 'drop_print_settings', 'drop_print_files', 'drop_print_activation_notice', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'drop_print_connect_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('drop_print_user_settings', '_drop_print_meta', '_drop_print_sku', '_drop_print_sizing', '_wc_shipment_tracking_items');
DELETE FROM wp_usermeta WHERE meta_key IN ('drop_print_user_settings', '_drop_print_meta', '_drop_print_sku', '_drop_print_sizing', '_wc_shipment_tracking_items');
DELETE FROM wp_termmeta WHERE meta_key IN ('drop_print_user_settings', '_drop_print_meta', '_drop_print_sku', '_drop_print_sizing', '_wc_shipment_tracking_items');
DELETE FROM wp_commentmeta WHERE meta_key IN ('drop_print_user_settings', '_drop_print_meta', '_drop_print_sku', '_drop_print_sizing', '_wc_shipment_tracking_items');

