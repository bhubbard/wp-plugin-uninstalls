-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bulletproof_bpcheckout_lite_settings', 'bulletproof_custom_gateway_api_error', 'bulletproof_lite_gateway_api_refund_error');

