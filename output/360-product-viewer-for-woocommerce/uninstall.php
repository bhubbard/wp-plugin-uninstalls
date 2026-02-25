<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('showcursor');
delete_site_option('showcursor');
delete_option('navigation');
delete_site_option('navigation');
delete_option('playspeed');
delete_site_option('playspeed');
delete_option('framerate');
delete_site_option('framerate');
delete_option('enablespin');
delete_site_option('enablespin');
delete_option('fullscreen');
delete_site_option('fullscreen');
delete_option('zoominout');
delete_site_option('zoominout');
delete_option('drag');
delete_site_option('drag');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp360view_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp360view_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp360view_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp360view_images' ) );

