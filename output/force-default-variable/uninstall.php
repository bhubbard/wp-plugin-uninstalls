<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fdv_wc_keep_manually_set_defaults_variable');
delete_site_option('fdv_wc_keep_manually_set_defaults_variable');
delete_option('fdv_wc_sort_variable');
delete_site_option('fdv_wc_sort_variable');
delete_option('fdv_wc_sort_then_variable');
delete_site_option('fdv_wc_sort_then_variable');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('fdv_wc_grey_out_variations_when_out_of_stock');
delete_site_option('fdv_wc_grey_out_variations_when_out_of_stock');
delete_option('fdv_wc_hide_variations_when_out_of_stock');
delete_site_option('fdv_wc_hide_variations_when_out_of_stock');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );

