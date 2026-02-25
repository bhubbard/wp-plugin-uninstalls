<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpspicp_image_width');
delete_site_option('tpspicp_image_width');
delete_option('tpspicp_image_height');
delete_site_option('tpspicp_image_height');
delete_option('tpspicp_is_rtl');
delete_site_option('tpspicp_is_rtl');
delete_option('tpspicp_image_border_radius');
delete_site_option('tpspicp_image_border_radius');
delete_option('tpspicp_label_sale');
delete_site_option('tpspicp_label_sale');
delete_option('tpspicp_label_you_saved');
delete_site_option('tpspicp_label_you_saved');
delete_option('tpspicp_show_total_discount_cart');
delete_site_option('tpspicp_show_total_discount_cart');
delete_option('tpspicp_show_regular_sale_price_cart');
delete_site_option('tpspicp_show_regular_sale_price_cart');
delete_option('tpspicp_activate');
delete_site_option('tpspicp_activate');
delete_option('tpspicp_add_on_sale');
delete_site_option('tpspicp_add_on_sale');

