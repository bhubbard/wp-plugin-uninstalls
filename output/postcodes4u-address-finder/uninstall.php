<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pc4u_settings');
delete_site_option('pc4u_settings');
delete_option('postcodes4u_page_title');
delete_site_option('postcodes4u_page_title');
delete_option('postcodes4u_page_name');
delete_site_option('postcodes4u_page_name');
delete_option('postcodes4u_page_id');
delete_site_option('postcodes4u_page_id');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('woocommerce_enable_order_comments');
delete_site_option('woocommerce_enable_order_comments');

