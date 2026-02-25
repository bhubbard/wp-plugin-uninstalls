<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('donate_areas');
delete_site_option('donate_areas');
delete_option('wanttoforgive');
delete_site_option('wanttoforgive');
delete_option('buttonlocation');
delete_site_option('buttonlocation');
delete_option('donationplace');
delete_site_option('donationplace');
delete_option('buttontitle');
delete_site_option('buttontitle');
delete_option('test');
delete_site_option('test');
delete_option('text');
delete_site_option('text');
delete_option('number');
delete_site_option('number');
delete_option('textarea');
delete_site_option('textarea');
delete_option('select');
delete_site_option('select');
delete_option('editor');
delete_site_option('editor');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'donate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'donate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'donate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'donate' ) );

