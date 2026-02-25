<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adobe_analytics_library_url');
delete_site_option('adobe_analytics_library_url');
delete_option('adobe_analytics_account_id');
delete_site_option('adobe_analytics_account_id');
delete_option('adobe_analytics_custom_js');
delete_site_option('adobe_analytics_custom_js');
delete_option('adobe_analytics_custom_variables');
delete_site_option('adobe_analytics_custom_variables');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'adobe_analytics_repeatable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'adobe_analytics_repeatable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'adobe_analytics_repeatable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'adobe_analytics_repeatable' ) );

