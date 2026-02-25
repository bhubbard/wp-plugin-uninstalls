<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eae_filter_priority');
delete_site_option('eae_filter_priority');
delete_option('eae_search_in');
delete_site_option('eae_search_in');
delete_option('eae_technique');
delete_site_option('eae_technique');
delete_option('eae_notices');
delete_site_option('eae_notices');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'eae_dismissed_automatic_warnings_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'eae_dismissed_automatic_warnings_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'eae_dismissed_automatic_warnings_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'eae_dismissed_automatic_warnings_notice' ) );

