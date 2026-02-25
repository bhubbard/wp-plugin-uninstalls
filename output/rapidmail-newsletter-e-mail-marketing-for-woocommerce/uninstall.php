<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rapidmail_consumer_key');
delete_site_option('rapidmail_consumer_key');
delete_option('rapidmail_secret_key');
delete_site_option('rapidmail_secret_key');
delete_option('rapidmail_connector');
delete_site_option('rapidmail_connector');
delete_option('rapidmail_connector_newsletter');
delete_site_option('rapidmail_connector_newsletter');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rapidmail_newsletter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rapidmail_newsletter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rapidmail_newsletter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rapidmail_newsletter' ) );

