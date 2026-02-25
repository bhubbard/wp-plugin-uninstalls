<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wa_bubble_options');
delete_site_option('wa_bubble_options');
delete_option('wa_bubble_options_style');
delete_site_option('wa_bubble_options_style');
delete_option('wa_bubble_page_conditions');
delete_site_option('wa_bubble_page_conditions');
delete_option('wa_bubble_schedule');
delete_site_option('wa_bubble_schedule');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_cart_page_id');
delete_site_option('woocommerce_cart_page_id');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');

