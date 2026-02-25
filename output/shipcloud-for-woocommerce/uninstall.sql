-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipcloud_catch_all_webhook_id', 'woocommerce_shipcloud_settings', 'woocommerce_store_manager', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_company', 'woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_default_country', 'woocommerce_api_enabled', 'woocommerce_shipcloud_carriers', 'woocommerce_shipcloud_count_requests', 'wc_shipcloud_version', 'woocommerce_shipcloud_show_upgrade_notice', 'shipcloud_downloads', 'shipcloud_notices');
DELETE FROM wp_options WHERE option_name LIKE '%_shipcloud_width';
DELETE FROM wp_options WHERE option_name LIKE '%_shipcloud_height';
DELETE FROM wp_options WHERE option_name LIKE '%_shipcloud_length';
DELETE FROM wp_options WHERE option_name LIKE '%_shipcloud_weight';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('carrier', 'width', 'height', 'length', 'weight', 'shipcloud_is_standard_parcel_template', 'shipcloud_shipment_data', 'shipcloud_sender_address', 'shipcloud_recipient_address', 'shipcloud_parcel_delivery_notification', 'shipcloud_shipment_ids', 'shipcloud_other', '_length', '_width', '_height', '_weight', 'shipcloud_origin_country', 'shipcloud_hs_tariff_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('carrier', 'width', 'height', 'length', 'weight', 'shipcloud_is_standard_parcel_template', 'shipcloud_shipment_data', 'shipcloud_sender_address', 'shipcloud_recipient_address', 'shipcloud_parcel_delivery_notification', 'shipcloud_shipment_ids', 'shipcloud_other', '_length', '_width', '_height', '_weight', 'shipcloud_origin_country', 'shipcloud_hs_tariff_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('carrier', 'width', 'height', 'length', 'weight', 'shipcloud_is_standard_parcel_template', 'shipcloud_shipment_data', 'shipcloud_sender_address', 'shipcloud_recipient_address', 'shipcloud_parcel_delivery_notification', 'shipcloud_shipment_ids', 'shipcloud_other', '_length', '_width', '_height', '_weight', 'shipcloud_origin_country', 'shipcloud_hs_tariff_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('carrier', 'width', 'height', 'length', 'weight', 'shipcloud_is_standard_parcel_template', 'shipcloud_shipment_data', 'shipcloud_sender_address', 'shipcloud_recipient_address', 'shipcloud_parcel_delivery_notification', 'shipcloud_shipment_ids', 'shipcloud_other', '_length', '_width', '_height', '_weight', 'shipcloud_origin_country', 'shipcloud_hs_tariff_number');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_trackingevent';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_trackingevent';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_trackingevent';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_trackingevent';

