<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smef_debug_log');
delete_site_option('smef_debug_log');
delete_option('smef_debug_mode');
delete_site_option('smef_debug_mode');
delete_option('smef_api_key');
delete_site_option('smef_api_key');
delete_option('smef_contact_unsubscribed_action');
delete_site_option('smef_contact_unsubscribed_action');
delete_option('smef_contact_deleted_action');
delete_site_option('smef_contact_deleted_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smef_form_validation_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smef_form_validation_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smef_form_validation_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smef_form_validation_results' ) );

