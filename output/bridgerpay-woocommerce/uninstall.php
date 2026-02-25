<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_bridgerpay_gateway_settings');
delete_site_option('woocommerce_bridgerpay_gateway_settings');
delete_option('woocommerce_bridgerpay_wallet_gateway_settings');
delete_site_option('woocommerce_bridgerpay_wallet_gateway_settings');
delete_option('bridgerpay_gateway_access_token');
delete_site_option('bridgerpay_gateway_access_token');

