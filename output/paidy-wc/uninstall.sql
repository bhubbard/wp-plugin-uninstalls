-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_paidy_show_ssl_notice', 'wc_paidy_show_curl_notice', 'woocommerce_paidy_settings', 'wc_paidy_show_pr_notice', 'wc-paygent-paidy', 'woocommerce_paidy_on_boarding_settings', 'paidy_site_hash', 'wc_paidy_apply_notice_2', 'wc_paidy_apply_notice_3', 'wc_paidy_apply_notice_99', 'paidy_received_data', 'received_data', 'woocommerce_price_num_decimals', 'paidy_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'wc_%';

