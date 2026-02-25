<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fcwlc-auto-logo');
delete_site_option('fcwlc-auto-logo');
delete_option('fcwlc-auto-logo-link');
delete_site_option('fcwlc-auto-logo-link');
delete_option('fcwlc-auto-logo-title');
delete_site_option('fcwlc-auto-logo-title');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fcwlc_activation_message_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fcwlc_activation_message_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fcwlc_activation_message_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fcwlc_activation_message_dismissed' ) );

