<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brickset-api-settings');
delete_site_option('brickset-api-settings');
delete_option('brickset_oembed_key');
delete_site_option('brickset_oembed_key');

// Delete Transients
delete_transient('bs_api_contributors');
delete_site_transient('bs_api_contributors');
delete_transient('_bs_api_activation_redirect');
delete_site_transient('_bs_api_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'brickset_user_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'brickset_user_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'brickset_user_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'brickset_user_hash' ) );

