<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ebb-type-lists');
delete_site_option('ebb-type-lists');
delete_option('ebb-logout-message');
delete_site_option('ebb-logout-message');
delete_option('ebb-disable-message');
delete_site_option('ebb-disable-message');
delete_option('ebb-basic-color');
delete_site_option('ebb-basic-color');
delete_option('ebb-public-select');
delete_site_option('ebb-public-select');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ebb-disable_user_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ebb-disable_user_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ebb-disable_user_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ebb-disable_user_flag' ) );

