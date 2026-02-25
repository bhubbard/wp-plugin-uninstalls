<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('show_stocks');
delete_site_option('show_stocks');
delete_option('stock_position');
delete_site_option('stock_position');
delete_option('display_icon');
delete_site_option('display_icon');
delete_option('in_stock_color');
delete_site_option('in_stock_color');
delete_option('out_stock_color');
delete_site_option('out_stock_color');
delete_option('dssfw_backorder_stock');
delete_site_option('dssfw_backorder_stock');
delete_option('out_stock_bg_color');
delete_site_option('out_stock_bg_color');
delete_option('dssfw_out_of_stock');
delete_site_option('dssfw_out_of_stock');
delete_option('dssfw_can_be_backorder_stock');
delete_site_option('dssfw_can_be_backorder_stock');
delete_option('in_stock_bg_color');
delete_site_option('in_stock_bg_color');
delete_option('dssfw_in_stock');
delete_site_option('dssfw_in_stock');
delete_option('dssfw_product_backorder_stock');
delete_site_option('dssfw_product_backorder_stock');
delete_option('dssfw_product_out_of_stock');
delete_site_option('dssfw_product_out_of_stock');
delete_option('dssfw_product_in_stock');
delete_site_option('dssfw_product_in_stock');
delete_option('dssfw_product_can_be_backorder_stock');
delete_site_option('dssfw_product_can_be_backorder_stock');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%sslpfwerror', '_site_transient_%sslpfwerror' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

