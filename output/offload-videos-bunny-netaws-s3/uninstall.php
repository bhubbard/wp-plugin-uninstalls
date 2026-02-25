<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('streaming_connect_service');
delete_site_option('streaming_connect_service');
delete_option('BUNNY_LIBRARY_ID');
delete_site_option('BUNNY_LIBRARY_ID');
delete_option('BUNNY_ACCESS_KEY');
delete_site_option('BUNNY_ACCESS_KEY');
delete_option('amazon_s3_key');
delete_site_option('amazon_s3_key');
delete_option('amazon_s3_secret');
delete_site_option('amazon_s3_secret');
delete_option('amazon_s3_region');
delete_site_option('amazon_s3_region');
delete_option('amazon_s3_bucket');
delete_site_option('amazon_s3_bucket');
delete_option('BUNNY_FILE_UPLOAD_LIMIT');
delete_site_option('BUNNY_FILE_UPLOAD_LIMIT');
delete_option('AMAZON_FILE_UPLOAD_LIMIT');
delete_site_option('AMAZON_FILE_UPLOAD_LIMIT');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'collection_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'collection_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'collection_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'collection_id' ) );

