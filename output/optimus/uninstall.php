<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('optimus');
delete_site_option('optimus');
delete_option('optimus_key');
delete_site_option('optimus_key');
delete_option('optimus_purchase_time');
delete_site_option('optimus_purchase_time');

// Delete Transients
delete_transient('optimus_activation_hook_in_use');
delete_site_transient('optimus_activation_hook_in_use');
delete_transient('optimus_renew_licence');
delete_site_transient('optimus_renew_licence');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );

