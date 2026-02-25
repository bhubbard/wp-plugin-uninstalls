<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wqrm_poll_interval_seconds');
delete_site_option('wqrm_poll_interval_seconds');
delete_option('wqrm_api_token');
delete_site_option('wqrm_api_token');
delete_option('wqrm_api_base_url');
delete_site_option('wqrm_api_base_url');
delete_option('wqrm_prefill_enabled');
delete_site_option('wqrm_prefill_enabled');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wqrm_prefill_request' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wqrm_prefill_request' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wqrm_prefill_request' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wqrm_prefill_request' ) );

