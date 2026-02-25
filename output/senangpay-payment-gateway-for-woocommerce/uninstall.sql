-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_senangpay_gateway_settings', 'woocommerce_force_ssl_checkout');

