-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paytr_payment_gateway_settings', 'woocommerce_paytr_payment_gateway_eft_settings');

