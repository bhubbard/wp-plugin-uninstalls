<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_supernetwork_parent_site');
delete_site_option('_supernetwork_parent_site');
delete_option('supernetwork_consolidated');
delete_site_option('supernetwork_consolidated');
delete_option('supernetwork_post_types');
delete_site_option('supernetwork_post_types');
delete_option('supernetwork_options');
delete_site_option('supernetwork_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_supernetwork_share' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_supernetwork_share' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_supernetwork_share' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_supernetwork_share' ) );

