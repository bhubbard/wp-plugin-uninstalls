<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AllInOneNoticeTime');
delete_site_option('AllInOneNoticeTime');
delete_option('DismissAllInOneNotice');
delete_site_option('DismissAllInOneNotice');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('rednaowooextraproduct_dont_show_again');
delete_site_option('rednaowooextraproduct_dont_show_again');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');

// Delete Transients
delete_transient('_woo_extra_products_go_to_welcome');
delete_site_transient('_woo_extra_products_go_to_welcome');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_rednao_advanced_product_server_options_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_rednao_advanced_product_server_options_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_rednao_advanced_product_server_options_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_rednao_advanced_product_server_options_%' ) );

