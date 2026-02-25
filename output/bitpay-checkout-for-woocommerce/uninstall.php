<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_bitpay_checkout_gateway_settings');
delete_site_option('woocommerce_bitpay_checkout_gateway_settings');

