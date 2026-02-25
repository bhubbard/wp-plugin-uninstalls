<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gseasy_auto_link');
delete_site_option('gseasy_auto_link');
delete_option('gseasy_tooltip_enable');
delete_site_option('gseasy_tooltip_enable');
delete_option('gseasy_tooltip_style');
delete_site_option('gseasy_tooltip_style');
delete_option('gseasy_index_layout');
delete_site_option('gseasy_index_layout');
delete_option('gseasy_custom_html');
delete_site_option('gseasy_custom_html');
delete_option('gseasy_permalink_slug');
delete_site_option('gseasy_permalink_slug');
delete_option('gseasy_enable_archive');
delete_site_option('gseasy_enable_archive');
delete_option('gseasy_permalink_slug_old');
delete_site_option('gseasy_permalink_slug_old');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gseasy_term_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gseasy_term_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gseasy_term_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gseasy_term_schema' ) );

