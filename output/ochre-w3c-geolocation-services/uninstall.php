<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ochregeo_rgeocode');
delete_site_option('ochregeo_rgeocode');
delete_option('ochregeo_opmode');
delete_site_option('ochregeo_opmode');
delete_option('ochregeo_globalactionjs');
delete_site_option('ochregeo_globalactionjs');
delete_option('ochregeo_useypf');
delete_site_option('ochregeo_useypf');
delete_option('ochregeo_ypfappid');
delete_site_option('ochregeo_ypfappid');
delete_option('ochregeo_lastgeocodergc');
delete_site_option('ochregeo_lastgeocodergc');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ochregeo_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ochregeo_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ochregeo_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ochregeo_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ochregeo_actionp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ochregeo_actionp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ochregeo_actionp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ochregeo_actionp' ) );

