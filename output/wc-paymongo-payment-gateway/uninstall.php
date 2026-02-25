<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_cynder_paymongo_test_mode');
delete_site_option('woocommerce_cynder_paymongo_test_mode');
delete_option('woocommerce_cynder_paymongo_send_invoice_after_payment');
delete_site_option('woocommerce_cynder_paymongo_send_invoice_after_payment');
delete_option('woocommerce_cynder_paymongo_debug_mode');
delete_site_option('woocommerce_cynder_paymongo_debug_mode');
delete_option('cynder_paymongo_version');
delete_site_option('cynder_paymongo_version');
delete_option('woocommerce_paymongo_settings');
delete_site_option('woocommerce_paymongo_settings');

