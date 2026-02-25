<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fskit_txt_color');
delete_site_option('fskit_txt_color');
delete_option('fskit_bg_color');
delete_site_option('fskit_bg_color');
delete_option('fskit_hide_tablerate_shipping');
delete_site_option('fskit_hide_tablerate_shipping');
delete_option('fskit_show_custom_label');
delete_site_option('fskit_show_custom_label');
delete_option('fskit_freeshipping_label');
delete_site_option('fskit_freeshipping_label');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_free_shipping_badge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_free_shipping_badge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_free_shipping_badge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_free_shipping_badge' ) );

