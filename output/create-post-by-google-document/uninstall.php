<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpbgd_application_name');
delete_site_option('cpbgd_application_name');
delete_option('cpbgd_developer_key');
delete_site_option('cpbgd_developer_key');
delete_option('cpbgd_client_id');
delete_site_option('cpbgd_client_id');
delete_option('cpbgd_client_secret');
delete_site_option('cpbgd_client_secret');
delete_option('cpbgd_api_token');
delete_site_option('cpbgd_api_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cpbgd_google_doc_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cpbgd_google_doc_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cpbgd_google_doc_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cpbgd_google_doc_id' ) );

