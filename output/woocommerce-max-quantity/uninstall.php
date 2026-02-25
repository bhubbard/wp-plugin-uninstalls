<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('isa_woocommerce_max_qty_limit');
delete_site_option('isa_woocommerce_max_qty_limit');
delete_option('direct_checkout_enabled');
delete_site_option('direct_checkout_enabled');
delete_option('direct_checkout_cart_redirect_url');
delete_site_option('direct_checkout_cart_redirect_url');

