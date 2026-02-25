<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('olivery_connect_auto_send');
delete_site_option('olivery_connect_auto_send');
delete_option('olivery_connect_token');
delete_site_option('olivery_connect_token');
delete_option('olivery_connect_status_map');
delete_site_option('olivery_connect_status_map');
delete_option('olivery_add_connect_sequence_note');
delete_site_option('olivery_add_connect_sequence_note');
delete_option('olivery_add_delivery_sequence_note');
delete_site_option('olivery_add_delivery_sequence_note');
delete_option('olivery_connect_field_mapping');
delete_site_option('olivery_connect_field_mapping');
delete_option('olivery_connect_paid_methods');
delete_site_option('olivery_connect_paid_methods');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_olivery_connect_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_olivery_connect_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_olivery_connect_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_olivery_connect_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_delivery_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_delivery_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_delivery_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_delivery_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_delivery_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_delivery_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_delivery_sequence' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_delivery_sequence' ) );

