<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wooref_cookie_expire');
delete_site_option('wooref_cookie_expire');
delete_option('wooref_trackme');
delete_site_option('wooref_trackme');
delete_option('wooref_track_admin_email');
delete_site_option('wooref_track_admin_email');
delete_option('wooref_track_user_email');
delete_site_option('wooref_track_user_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wooref_site_ref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wooref_site_ref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wooref_site_ref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wooref_site_ref' ) );

