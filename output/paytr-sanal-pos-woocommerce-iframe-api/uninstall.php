<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_paytr_payment_gateway_settings');
delete_site_option('woocommerce_paytr_payment_gateway_settings');
delete_option('woocommerce_paytr_payment_gateway_eft_settings');
delete_site_option('woocommerce_paytr_payment_gateway_eft_settings');

