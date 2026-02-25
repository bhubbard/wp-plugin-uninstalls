<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_min_order_value');
delete_site_option('woocommerce_min_order_value');
delete_option('woocommerce_min_order_message_checkout');
delete_site_option('woocommerce_min_order_message_checkout');
delete_option('woocommerce_min_order_message_cart');
delete_site_option('woocommerce_min_order_message_cart');
delete_option('woocommerce_min_order_exclude_products');
delete_site_option('woocommerce_min_order_exclude_products');
delete_option('woocommerce_min_order_exclude_categories');
delete_site_option('woocommerce_min_order_exclude_categories');

