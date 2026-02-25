<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tdprb-access-token-val');
delete_site_option('tdprb-access-token-val');
delete_option('tdprb-access-token');
delete_site_option('tdprb-access-token');
delete_option('tdprb-access-token-data');
delete_site_option('tdprb-access-token-data');
delete_option('tdprb_settings');
delete_site_option('tdprb_settings');
delete_option('tdprb_lab_settings');
delete_site_option('tdprb_lab_settings');
delete_option('tdprb_natural_settings');
delete_site_option('tdprb_natural_settings');
delete_option('tdprb_ring_settings');
delete_site_option('tdprb_ring_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_custom_tdp_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_custom_tdp_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_custom_tdp_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_custom_tdp_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'diamond_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'diamond_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'diamond_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'diamond_sku' ) );

