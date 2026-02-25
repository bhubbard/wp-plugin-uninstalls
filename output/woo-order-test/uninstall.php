<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admin_payment_bypass_enabled');
delete_site_option('admin_payment_bypass_enabled');
delete_option('woocommerce_wpfi_woo_order_test_settings');
delete_site_option('woocommerce_wpfi_woo_order_test_settings');
delete_option('wpfi_do_activation_redirect');
delete_site_option('wpfi_do_activation_redirect');

