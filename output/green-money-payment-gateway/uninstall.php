<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmpg_settings');
delete_site_option('gmpg_settings');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');

// Delete Transients
delete_transient('checkout_temp_data');
delete_site_transient('checkout_temp_data');

