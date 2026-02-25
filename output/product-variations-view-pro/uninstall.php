<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dro_pvvp_is_enabled');
delete_site_option('dro_pvvp_is_enabled');
delete_option('dro_pvvp_show_range_price');
delete_site_option('dro_pvvp_show_range_price');
delete_option('dro_pvvp_show_main_product_short_description');
delete_site_option('dro_pvvp_show_main_product_short_description');
delete_option('dro_pvvp_show_product_gallery');
delete_site_option('dro_pvvp_show_product_gallery');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_price_trim_zeros');
delete_site_option('woocommerce_price_trim_zeros');

