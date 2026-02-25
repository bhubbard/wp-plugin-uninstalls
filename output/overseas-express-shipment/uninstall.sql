-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('overseas_express_api_key', 'overseas_express_sender_name', 'overseas_express_sender_country', 'overseas_express_sender_zipcode', 'overseas_express_sender_city', 'overseas_express_sender_street', 'overseas_express_sender_telephone', 'overseas_express_sender_fax', 'overseas_express_sender_gsm', 'overseas_express_sender_email', 'overseas_express_label_layout_id', 'woocommerce_overseas_express_pickup_shipping_settings', 'woocommerce_overseas_express_flat_shipping_settings', 'woocommerce_price_display_suffix');
DELETE FROM wp_options WHERE option_name LIKE 'bulk_labels_result_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('overseas_express_shipping_option', '_overseas_shipment_id', '_overseas_cargo_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('overseas_express_shipping_option', '_overseas_shipment_id', '_overseas_cargo_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('overseas_express_shipping_option', '_overseas_shipment_id', '_overseas_cargo_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('overseas_express_shipping_option', '_overseas_shipment_id', '_overseas_cargo_ids');

