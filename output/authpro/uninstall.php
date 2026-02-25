<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('authpro_username');
delete_site_option('authpro_username');
delete_option('authpro_usage');
delete_site_option('authpro_usage');
delete_option('authpro_protect_categories');
delete_site_option('authpro_protect_categories');
delete_option('authpro_protect_tags');
delete_site_option('authpro_protect_tags');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_authpro_protect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_authpro_protect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_authpro_protect' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_authpro_protect' ) );

