-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_yuansfer_settings', 'wc_yuansfer_show_ssl_notice', 'wc_yuansfer_show_keys_notice', 'wc_yuansfer_show_phpver_notice', 'wc_yuansfer_show_wcver_notice', 'wc_yuansfer_show_curl_notice', 'wc_yuansfer_show_alipay_notice', 'wc_yuansfer_show_wechatpay_notice', 'wc_yuansfer_show_creditcard_notice', 'wc_yuansfer_show_paypal_notice', 'wc_yuansfer_show_venmo_notice', 'woocommerce_gateway_yuansfer_retention', 'wc_yuansfer_show_request_api_notice', 'wc_yuansfer_version', 'woocommerce_yuansfer_alipay_settings', 'woocommerce_yuansfer_wechatpay_settings', 'woocommerce_yuansfer_creditcard_settings', 'woocommerce_yuansfer_paypal_settings', 'woocommerce_yuansfer_venmo_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'yuansfer_customer_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yuansfer_customer_id', '_yuansfer_source_id', '_yuansfer_refund_id', 'billing_email', '_yuansfer_card_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yuansfer_customer_id', '_yuansfer_source_id', '_yuansfer_refund_id', 'billing_email', '_yuansfer_card_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yuansfer_customer_id', '_yuansfer_source_id', '_yuansfer_refund_id', 'billing_email', '_yuansfer_card_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yuansfer_customer_id', '_yuansfer_source_id', '_yuansfer_refund_id', 'billing_email', '_yuansfer_card_id');

