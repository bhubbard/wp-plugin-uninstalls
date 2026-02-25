<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_min_order_amount_value');
delete_site_option('woo_min_order_amount_value');
delete_option('woo_min_order_trigger_value');
delete_site_option('woo_min_order_trigger_value');
delete_option('woo_min_order_amount_shop_link');
delete_site_option('woo_min_order_amount_shop_link');
delete_option('woo_min_order_amount_shop_link_text');
delete_site_option('woo_min_order_amount_shop_link_text');
delete_option('woo_min_order_amount_cart_message');
delete_site_option('woo_min_order_amount_cart_message');
delete_option('woo_min_order_amount_checkout_message');
delete_site_option('woo_min_order_amount_checkout_message');

