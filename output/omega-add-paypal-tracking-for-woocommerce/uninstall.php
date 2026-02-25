<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('omega_add_paypal_tracking');
delete_site_option('omega_add_paypal_tracking');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_api_enabled');
delete_site_option('woocommerce_api_enabled');

