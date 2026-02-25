-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('strabl_valid_uuid', 'woocommerce_strabl_payment_gateway_settings', 'strabl_plugin_data', 'strabl_payment_gateway_merchant_uuid', 'woocommerce_strabl_settings', 'strabl_payment_gateway_css_code', 'strabl_payment_gateway_checkout_css_code', 'strabl_data_last_accessed', 'strabl_last_fetch_timestamp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fulfilmentStatus', 'paymentStatus', 'orderShortCode', 'customerUuid', 'tag', 'orderUuid');
DELETE FROM wp_usermeta WHERE meta_key IN ('fulfilmentStatus', 'paymentStatus', 'orderShortCode', 'customerUuid', 'tag', 'orderUuid');
DELETE FROM wp_termmeta WHERE meta_key IN ('fulfilmentStatus', 'paymentStatus', 'orderShortCode', 'customerUuid', 'tag', 'orderUuid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fulfilmentStatus', 'paymentStatus', 'orderShortCode', 'customerUuid', 'tag', 'orderUuid');

