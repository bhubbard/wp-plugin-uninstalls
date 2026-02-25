-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_checkout_com_cards_settings', 'woocommerce_wc_checkout_com_flow_settings', 'woocommerce_wc_checkout_com_alternative_payments_settings', 'woocommerce_wc_checkout_com_google_pay_settings', 'woocommerce_wc_checkout_com_apple_pay_settings', 'woocommerce_wc_checkout_com_paypal_settings', 'rewrite_rules', 'checkoutcom_blocks_notice_dismissed', 'woocommerce_checkout_pay_endpoint', 'cko_log_level', 'cko_log_max_size_mb', 'cko_log_max_files', 'cko_log_retention_days', 'cko_performance_logging', 'cko_async_logging', 'cko_log_buffer_size', 'woocommerce_checkout_page_id', 'cko_last_log_cleanup');
DELETE FROM wp_options WHERE option_name LIKE 'cko_validation_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'cko_validation_address_%';
DELETE FROM wp_options WHERE option_name LIKE 'cko_flow_incomplete_order_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_subscription_period', '_subscription_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_subscription_period', '_subscription_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_subscription_period', '_subscription_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_subscription_period', '_subscription_price');

