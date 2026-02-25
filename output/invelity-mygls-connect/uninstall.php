<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('invelity_my_gls_export_options');
delete_site_option('invelity_my_gls_export_options');

// Delete Transients
delete_transient('invelity-my-gls-ad');
delete_site_transient('invelity-my-gls-ad');
delete_transient('invelity-plugins-description');
delete_site_transient('invelity-plugins-description');
delete_transient('invelity-plugins-ad');
delete_site_transient('invelity-plugins-ad');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'invelity_gls_parcel_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'invelity_gls_parcel_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'invelity_gls_parcel_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'invelity_gls_parcel_number' ) );

