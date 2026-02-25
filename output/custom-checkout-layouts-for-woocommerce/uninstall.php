<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_enable_order_comments');
delete_site_option('woocommerce_enable_order_comments');
delete_option('cclw_general_settings');
delete_site_option('cclw_general_settings');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('cclw_advance_settings');
delete_site_option('cclw_advance_settings');
delete_option('cclw_checkout_fields');
delete_site_option('cclw_checkout_fields');
delete_option('cclw_pro_version');
delete_site_option('cclw_pro_version');
delete_option('cclw_do_activation_redirect');
delete_site_option('cclw_do_activation_redirect');
delete_option('woocommerce_cart_block_enabled');
delete_site_option('woocommerce_cart_block_enabled');
delete_option('woocommerce_checkout_block_enabled');
delete_site_option('woocommerce_checkout_block_enabled');

