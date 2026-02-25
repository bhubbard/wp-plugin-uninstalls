<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('bux_payment_client_secret');
delete_site_option('bux_payment_client_secret');
delete_option('bux_payment_client_id');
delete_site_option('bux_payment_client_id');
delete_option('bux_payment_api_key');
delete_site_option('bux_payment_api_key');
delete_option('bux_payment_default_expiry');
delete_site_option('bux_payment_default_expiry');
delete_option('bux_redirect_disable');
delete_site_option('bux_redirect_disable');
delete_option('bux_test_mode');
delete_site_option('bux_test_mode');

