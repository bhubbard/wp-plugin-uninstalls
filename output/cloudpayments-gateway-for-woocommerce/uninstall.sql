-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_cloudpayments_gateway_settings', 'woocommerce_force_ssl_checkout');

