<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jinnai_consumer_key');
delete_site_option('jinnai_consumer_key');
delete_option('jinnai_consumer_secret');
delete_site_option('jinnai_consumer_secret');
delete_option('jinnai_is_prod_or_dev');
delete_site_option('jinnai_is_prod_or_dev');
delete_option('jinnai_response_data');
delete_site_option('jinnai_response_data');
delete_option('jinnai_api_token');
delete_site_option('jinnai_api_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

