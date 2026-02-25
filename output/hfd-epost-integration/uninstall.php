<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('betanet_epost_hfd_track_shipment_url');
delete_site_option('betanet_epost_hfd_track_shipment_url');
delete_option('betanet_epost_hfd_cancel_shipment_url');
delete_site_option('betanet_epost_hfd_cancel_shipment_url');
delete_option('betanet_epost_hfd_print_label_url');
delete_site_option('betanet_epost_hfd_print_label_url');
delete_option('hfd_order_auto_sync');
delete_site_option('hfd_order_auto_sync');
delete_option('hfd_sync_order_items');
delete_site_option('hfd_sync_order_items');
delete_option('betanet_epost_service_url');
delete_site_option('betanet_epost_service_url');
delete_option('betanet_epost_hfd_service_url');
delete_site_option('betanet_epost_hfd_service_url');
delete_option('hfd_auto_sync_time');
delete_site_option('hfd_auto_sync_time');
delete_option('hfd_auto_sync_status');
delete_site_option('hfd_auto_sync_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('hfd_schedule_auto_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hfd_ship_cancel_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hfd_ship_cancel_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hfd_ship_cancel_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hfd_ship_cancel_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hfd_sync_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hfd_sync_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hfd_sync_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hfd_sync_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hfd_rand_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hfd_rand_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hfd_rand_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hfd_rand_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'betanet_pmethod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'betanet_pmethod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'betanet_pmethod' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'betanet_pmethod' ) );

