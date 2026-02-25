-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_youcanpay_show_ssl_notice', 'wc_youcanpay_show_keys_notice', 'wc_youcanpay_show_phpver_notice', 'wc_youcanpay_show_wcver_notice', 'wc_youcanpay_show_curl_notice', 'woocommerce_youcanpay_settings', 'wc_youcanpay_show_youcan_pay_notice', 'wc_youcanpay_show_youcan_pay_standalone_notice', 'woocommerce_gateway_youcanpay_retention', 'wc_youcanpay_show_standalone_notice', 'wc_youcanpay_version', 'woocommerce_youcanpay_standalone_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

