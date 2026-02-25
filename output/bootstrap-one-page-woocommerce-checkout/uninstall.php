<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cart_colum');
delete_site_option('cart_colum');
delete_option('billing_colum');
delete_site_option('billing_colum');
delete_option('Bootstrap-one-page-woocommerce-checkout');
delete_site_option('Bootstrap-one-page-woocommerce-checkout');

