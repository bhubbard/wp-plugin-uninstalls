<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sales_counter_enable_check');
delete_site_option('sales_counter_enable_check');
delete_option('sales_counter_enable_title');
delete_site_option('sales_counter_enable_title');
delete_option('sales_counter_zero_disable_check');
delete_site_option('sales_counter_zero_disable_check');
delete_option('sales_counter_wc_select_option');
delete_site_option('sales_counter_wc_select_option');
delete_option('sales_counter_single_enable_check');
delete_site_option('sales_counter_single_enable_check');
delete_option('sales_counter_wc_select_single_option');
delete_site_option('sales_counter_wc_select_single_option');
delete_option('sales_counter_zero_custom_message');
delete_site_option('sales_counter_zero_custom_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'total_sales' ) );

