<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wigzo_org_token');
delete_site_option('wigzo_org_token');
delete_option('wigzo_pwa');
delete_site_option('wigzo_pwa');
delete_option('wigzo_pwaData');
delete_site_option('wigzo_pwaData');
delete_option('wigzo_challenge');
delete_site_option('wigzo_challenge');
delete_option('wigzo_orgId');
delete_site_option('wigzo_orgId');
delete_option('wigzo_pwaFilesPath');
delete_site_option('wigzo_pwaFilesPath');
delete_option('wigzo_browserpush');
delete_site_option('wigzo_browserpush');
delete_option('wigzo_viahttps');
delete_site_option('wigzo_viahttps');
delete_option('wigzo_onsitepush');
delete_site_option('wigzo_onsitepush');
delete_option('wigzo_token');
delete_site_option('wigzo_token');
delete_option('wigzo_oauth');
delete_site_option('wigzo_oauth');
delete_option('wigzo_client_id');
delete_site_option('wigzo_client_id');
delete_option('wigzo_enabled');
delete_site_option('wigzo_enabled');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wigzo_order_update_%', '_site_transient_wigzo_order_update_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

