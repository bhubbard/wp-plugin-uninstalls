<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webchain_user_email');
delete_site_option('webchain_user_email');
delete_option('webchain_wallet');
delete_site_option('webchain_wallet');
delete_option('webchain_connection_status');
delete_site_option('webchain_connection_status');
delete_option('webchain_sync_errors');
delete_site_option('webchain_sync_errors');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_webchain_tx_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_webchain_tx_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_webchain_tx_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_webchain_tx_hash' ) );

