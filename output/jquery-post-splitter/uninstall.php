<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jps_options');
delete_site_option('jps_options');
delete_option('jps_restrictions');
delete_site_option('jps_restrictions');
delete_option('jps_analytics_id');
delete_site_option('jps_analytics_id');
delete_option('jps_custom_style');
delete_site_option('jps_custom_style');
delete_option('jps_custom_section');
delete_site_option('jps_custom_section');
delete_option('jps_custom_section_below');
delete_site_option('jps_custom_section_below');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jps_nav_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jps_nav_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jps_nav_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jps_nav_type' ) );

