<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_bank_bni_accounts');
delete_site_option('woocommerce_bank_bni_accounts');
delete_option('woocommerce_bank_bri_accounts');
delete_site_option('woocommerce_bank_bri_accounts');
delete_option('woocommerce_bank_mandiri_accounts');
delete_site_option('woocommerce_bank_mandiri_accounts');
delete_option('woocommerce_paymentcode_enabled');
delete_site_option('woocommerce_paymentcode_enabled');

