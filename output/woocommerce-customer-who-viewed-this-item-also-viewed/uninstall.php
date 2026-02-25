<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customer_who_viewed_title');
delete_site_option('customer_who_viewed_title');
delete_option('total_items_display');
delete_site_option('total_items_display');
delete_option('category_filter');
delete_site_option('category_filter');
delete_option('show_image_filter');
delete_site_option('show_image_filter');
delete_option('show_price_filter');
delete_site_option('show_price_filter');
delete_option('show_addtocart_filter');
delete_site_option('show_addtocart_filter');
delete_option('product_order');
delete_site_option('product_order');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'customer_also_viewed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

