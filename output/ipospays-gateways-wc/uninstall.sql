-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ipospays_settings', 'woocommerce_ipospays_gpay_settings', 'woocommerce_ipospays_apple_pay_settings', 'ipospays_settings', 'ipospays_plugin_version', 'ipospay_token_split_done', 'ipospays_payment_token_id', 'ipospays_version_sent');

