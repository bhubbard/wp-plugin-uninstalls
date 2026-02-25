<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('amazon_id_global');
delete_site_option('amazon_id_global');
delete_option('checkGlobalTracking');
delete_site_option('checkGlobalTracking');
delete_option('checkCache');
delete_site_option('checkCache');
delete_option('cacheTime');
delete_site_option('cacheTime');
delete_option('amazonApiKey');
delete_site_option('amazonApiKey');
delete_option('amazonApiSecretKey');
delete_site_option('amazonApiSecretKey');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'eaAuthorTracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'eaAuthorTracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'eaAuthorTracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'eaAuthorTracking' ) );

