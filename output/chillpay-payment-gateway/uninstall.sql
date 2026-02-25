-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chillpay_stored_site_url', 'chillpay_domain_changed', 'chillpay_gateways_fixed', 'woocommerce_chillpay_installment_settings', 'woocommerce_chillpay_settings', 'wc_payment_gateways', 'woocommerce_payment_gateways', 'wc_site_url', 'chillpay_merchant_info', 'chillpay_fee_info');

