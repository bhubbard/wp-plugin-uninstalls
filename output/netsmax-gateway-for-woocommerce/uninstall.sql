-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_netsmax-gateway-for-woocommerce_settings', 'netsmax_gateway_for_woocommerce_version', 'netsmax_gateway_for_woocommerce_store_id');

