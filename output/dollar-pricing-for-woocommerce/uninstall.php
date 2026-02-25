<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dollprfo_dolar_kuru');
delete_site_option('dollprfo_dolar_kuru');
delete_option('dollprfo_kar_yuzdesi');
delete_site_option('dollprfo_kar_yuzdesi');
delete_option('dollprfo_batch_total');
delete_site_option('dollprfo_batch_total');
delete_option('dollprfo_batch_offset');
delete_site_option('dollprfo_batch_offset');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dolar_alis_fiyati' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dolar_alis_fiyati' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dolar_alis_fiyati' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dolar_alis_fiyati' ) );

