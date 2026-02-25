-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('express_one_api_key', 'express_one_sender_name', 'express_one_sender_country', 'express_one_sender_zipcode', 'express_one_sender_city', 'express_one_sender_street', 'express_one_sender_telephone', 'express_one_sender_fax', 'express_one_sender_gsm', 'express_one_sender_email', 'express_one_label_layout_id', 'woocommerce_express_one_pickup_shipping_settings', 'woocommerce_express_one_flat_shipping_settings', 'woocommerce_price_display_suffix');
DELETE FROM wp_options WHERE option_name LIKE 'express_one_shipment_created_%';
DELETE FROM wp_options WHERE option_name LIKE 'express_one_shipment_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'express_one_shipment_updated_%';
DELETE FROM wp_options WHERE option_name LIKE 'bulk_labels_result_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('express_one_shipping_option', '_expressone_shipment_id', '_expressone_cargo_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('express_one_shipping_option', '_expressone_shipment_id', '_expressone_cargo_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('express_one_shipping_option', '_expressone_shipment_id', '_expressone_cargo_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('express_one_shipping_option', '_expressone_shipment_id', '_expressone_cargo_ids');

