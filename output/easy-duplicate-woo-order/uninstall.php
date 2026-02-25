<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wizbee_duplicate_order_add_order_menu');
delete_site_option('wizbee_duplicate_order_add_order_menu');
delete_option('wizbee_duplicate_order_add_order_topbar');
delete_site_option('wizbee_duplicate_order_add_order_topbar');
delete_option('wizbee_duplicate_order_copy_old_price');
delete_site_option('wizbee_duplicate_order_copy_old_price');
delete_option('wizbee_duplicate_order_copy_fees');
delete_site_option('wizbee_duplicate_order_copy_fees');
delete_option('wizbee_duplicate_order_copy_shipping');
delete_site_option('wizbee_duplicate_order_copy_shipping');
delete_option('wizbee_duplicate_order_apply_coupons');
delete_site_option('wizbee_duplicate_order_apply_coupons');
delete_option('wizbee_duplicate_order_status');
delete_site_option('wizbee_duplicate_order_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wb_edwo_notice_dismissed_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wb_edwo_notice_dismissed_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wb_edwo_notice_dismissed_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wb_edwo_notice_dismissed_version' ) );

