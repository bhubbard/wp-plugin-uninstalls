<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awesome_dokan_options');
delete_site_option('awesome_dokan_options');
delete_option('awesome_dokan_styles');
delete_site_option('awesome_dokan_styles');
delete_option('dokan_appearance');
delete_site_option('dokan_appearance');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'awesome_dokan_fullscreen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'awesome_dokan_fullscreen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'awesome_dokan_fullscreen' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'awesome_dokan_fullscreen' ) );

