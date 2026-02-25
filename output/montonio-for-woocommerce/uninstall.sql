-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('montonio_shipping_enabled', 'montonio_shipping_dropdown_type', 'woocommerce_wc_montonio_api_settings', 'montonio_last_sync', 'montonio_payment_methods', 'montonio_telemetry_sync_timestamp', 'woocommerce_currency', 'montonio_shipping_orderStatusWhenLabelPrinted', 'montonio_shipping_order_status_when_delivered', 'montonio_email_tracking_code_text', 'montonio_shipping_show_address', 'montonio_shipping_show_provider_logos', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_montonio_payments_settings', 'woocommerce_wc_montonio_payments_settings', 'woocommerce_montonio_card_payments_settings', 'woocommerce_montonio_blik_payments_settings', 'montonio_shipping_accessKey', 'montonio_shipping_secretKey', 'montonio_shipping_sync_timestamp', 'woocommerce_wc_montonio_hire_purchase_settings', 'montonio_shipping_create_shipment_on_status', 'wc_montonio_plugin_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('montonio_banners', '_montonio_no_parcel_machine', '_montonio_separate_label');
DELETE FROM wp_usermeta WHERE meta_key IN ('montonio_banners', '_montonio_no_parcel_machine', '_montonio_separate_label');
DELETE FROM wp_termmeta WHERE meta_key IN ('montonio_banners', '_montonio_no_parcel_machine', '_montonio_separate_label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('montonio_banners', '_montonio_no_parcel_machine', '_montonio_separate_label');

