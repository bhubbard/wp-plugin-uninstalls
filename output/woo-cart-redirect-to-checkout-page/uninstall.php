<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_cart_redirect_to_page');
delete_site_option('woo_cart_redirect_to_page');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('woo_cart_redirect_default');
delete_site_option('woo_cart_redirect_default');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');

// Delete Transients
delete_transient('gwp_com_live_feed');
delete_site_transient('gwp_com_live_feed');

