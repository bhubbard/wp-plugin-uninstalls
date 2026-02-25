<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('restrictioncurrentversion');
delete_site_option('restrictioncurrentversion');
delete_option('restrictiondisableallfeature');
delete_site_option('restrictiondisableallfeature');
delete_option('restrictionmoregisterpageurl');
delete_site_option('restrictionmoregisterpageurl');
delete_option('saved_open_page_url');
delete_site_option('saved_open_page_url');
delete_option('restrictionenablepagelevelprotect');
delete_site_option('restrictionenablepagelevelprotect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'restc_restriction_access_to_this_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'restc_restriction_access_to_this_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'restc_restriction_access_to_this_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'restc_restriction_access_to_this_page' ) );

