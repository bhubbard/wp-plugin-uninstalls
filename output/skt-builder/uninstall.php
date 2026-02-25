<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sktbuilder_version');
delete_site_option('sktbuilder_version');
delete_option('sktbuilder_libraries');
delete_site_option('sktbuilder_libraries');
delete_option('sktbuilder_page_templates');
delete_site_option('sktbuilder_page_templates');
delete_option('sktbuilder_libs');
delete_site_option('sktbuilder_libs');

// Delete Transients
delete_transient('sktbuilder_action');
delete_site_transient('sktbuilder_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sktbuilder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sktbuilder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sktbuilder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sktbuilder_data' ) );

