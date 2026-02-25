<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_favorites_inclusive_search');
delete_site_option('wp_favorites_inclusive_search');
delete_option('wp_favorites_non_logged_in_html');
delete_site_option('wp_favorites_non_logged_in_html');
delete_option('wp_favorites_version');
delete_site_option('wp_favorites_version');
delete_option('wp_favorites_logged_in_no_faves_html');
delete_site_option('wp_favorites_logged_in_no_faves_html');
delete_option('wp_favorites_taxonomies');
delete_site_option('wp_favorites_taxonomies');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_favorites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_favorites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_favorites' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_favorites' ) );

