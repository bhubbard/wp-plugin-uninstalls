<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DOPW_button_text');
delete_site_option('DOPW_button_text');
delete_option('DOPW_place_order_color');
delete_site_option('DOPW_place_order_color');
delete_option('DOPW_total_color');
delete_site_option('DOPW_total_color');
delete_option('DOPW_product_price_color');
delete_site_option('DOPW_product_price_color');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');

