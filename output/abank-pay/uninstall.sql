-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abankpay_admin_notice', 'woocommerce_abank_pay_gateway_settings');

