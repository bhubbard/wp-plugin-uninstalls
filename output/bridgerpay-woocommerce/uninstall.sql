-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bridgerpay_gateway_settings', 'woocommerce_bridgerpay_wallet_gateway_settings', 'bridgerpay_gateway_access_token');

