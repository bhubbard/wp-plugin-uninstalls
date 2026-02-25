<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tuna_payment_operation_mode');
delete_site_option('tuna_payment_operation_mode');
delete_option('tuna_payment_antifraud_config');
delete_site_option('tuna_payment_antifraud_config');
delete_option('tuna_payment_allow_cartao');
delete_site_option('tuna_payment_allow_cartao');
delete_option('tuna_operation_mode');
delete_site_option('tuna_operation_mode');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');

