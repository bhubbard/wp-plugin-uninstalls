<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phoneme_order_woocommerce_title_1');
delete_site_option('phoneme_order_woocommerce_title_1');
delete_option('phoneme_order_woocommerce_title_2');
delete_site_option('phoneme_order_woocommerce_title_2');
delete_option('phoneme_order_woocommerce_hint_text');
delete_site_option('phoneme_order_woocommerce_hint_text');
delete_option('phoneme_order_woocommerce_outofstock');
delete_site_option('phoneme_order_woocommerce_outofstock');

