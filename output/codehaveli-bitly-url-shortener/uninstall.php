<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ch_wbitly_url_option');
delete_site_option('ch_wbitly_url_option');

// Delete Transients
delete_transient('wbitly_guid_success');
delete_site_transient('wbitly_guid_success');
delete_transient('wbitly_guid_error');
delete_site_transient('wbitly_guid_error');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wbitly_shorturl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wbitly_shorturl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wbitly_shorturl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wbitly_shorturl' ) );

