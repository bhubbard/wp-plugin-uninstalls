<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmwqp_field_customizer_enble');
delete_site_option('gmwqp_field_customizer_enble');
delete_option('gmwqp_field_customizer_required');
delete_site_option('gmwqp_field_customizer_required');
delete_option('gmwqp_field_customizer_field');
delete_site_option('gmwqp_field_customizer_field');
delete_option('gmwqp_field_customizer_type');
delete_site_option('gmwqp_field_customizer_type');
delete_option('gmwqp_field_customizer_order');
delete_site_option('gmwqp_field_customizer_order');
delete_option('gmwqp_field_customizer_option');
delete_site_option('gmwqp_field_customizer_option');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_gmwqp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_gmwqp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_gmwqp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_gmwqp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'productid_gmwqp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'productid_gmwqp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'productid_gmwqp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'productid_gmwqp' ) );

