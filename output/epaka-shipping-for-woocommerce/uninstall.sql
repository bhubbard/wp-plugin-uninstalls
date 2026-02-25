-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_checkout_fields', 'woocommerce_checkout_field_editor_fields', 'woocommerce_meta_box_order', 'woocommerce_shop_order_columns', 'epakshfo_plugin_version', 'wc_admin_active_fields', 'wc_admin_meta_boxes', 'wc_order_export_columns', 'wc_checkout_fields', 'epakshfo_deactivation_notice', 'wc_shipping_method_count', 'epakshfo_flash_message');
DELETE FROM wp_options WHERE option_name LIKE 'shipping_method_count_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_house_number', '_shipping_house_number', '_billing_nip', '_billing_company', '_block_order_structure', '_order_processed_by_epakshfo_plugin');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_house_number', '_shipping_house_number', '_billing_nip', '_billing_company', '_block_order_structure', '_order_processed_by_epakshfo_plugin');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_house_number', '_shipping_house_number', '_billing_nip', '_billing_company', '_block_order_structure', '_order_processed_by_epakshfo_plugin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_house_number', '_shipping_house_number', '_billing_nip', '_billing_company', '_block_order_structure', '_order_processed_by_epakshfo_plugin');

