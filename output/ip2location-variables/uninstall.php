<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ip2location_variables_lookup_mode');
delete_site_option('ip2location_variables_lookup_mode');
delete_option('ip2location_variables_api_key');
delete_site_option('ip2location_variables_api_key');
delete_option('ip2location_variables_io_api_key');
delete_site_option('ip2location_variables_io_api_key');
delete_option('ip2location_variables_database');
delete_site_option('ip2location_variables_database');
delete_option('ip2location_variables_debug_log_enabled');
delete_site_option('ip2location_variables_debug_log_enabled');
delete_option('ip2location_variables_token');
delete_site_option('ip2location_variables_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ip2location_variables_admin_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ip2location_variables_admin_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ip2location_variables_admin_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ip2location_variables_admin_notice' ) );

