<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('extra_product_data_max_order_status');
delete_site_option('extra_product_data_max_order_status');
delete_option('exprdawc_custom_add_to_cart_text');
delete_site_option('exprdawc_custom_add_to_cart_text');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('exprdawc_show_in_cart');
delete_site_option('exprdawc_show_in_cart');
delete_option('exprdawc_show_in_checkout');
delete_site_option('exprdawc_show_in_checkout');
delete_option('exprdawc_show_empty_fields');
delete_site_option('exprdawc_show_empty_fields');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

