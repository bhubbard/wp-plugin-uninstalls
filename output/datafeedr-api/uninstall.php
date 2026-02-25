<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dfrapi_account');
delete_site_option('dfrapi_account');
delete_option('dfrapi_networks');
delete_site_option('dfrapi_networks');
delete_option('dfrapi_merchants');
delete_site_option('dfrapi_merchants');
delete_option('dfrapi_configuration');
delete_site_option('dfrapi_configuration');
delete_option('dfrapi_transient_whitelist');
delete_site_option('dfrapi_transient_whitelist');
delete_option('dfrapi_product_networks');
delete_site_option('dfrapi_product_networks');
delete_option('dfrapi_coupon_networks');
delete_site_option('dfrapi_coupon_networks');
delete_option('dfrapi_version');
delete_site_option('dfrapi_version');
delete_option('dfrapi_usage_notification_tracker');
delete_site_option('dfrapi_usage_notification_tracker');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_owner_datafeedr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_owner_datafeedr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_owner_datafeedr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_owner_datafeedr' ) );

