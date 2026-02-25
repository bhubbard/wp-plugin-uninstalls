<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dpfcrs_last_sync_time');
delete_site_option('dpfcrs_last_sync_time');
delete_option('dpfcrs_onboarding_completed');
delete_site_option('dpfcrs_onboarding_completed');
delete_option('dpfcrs_sync');
delete_site_option('dpfcrs_sync');
delete_option('dpfcrs_connection');
delete_site_option('dpfcrs_connection');
delete_option('dpfcrs_spaces');
delete_site_option('dpfcrs_spaces');
delete_option('dpfcrs_settings');
delete_site_option('dpfcrs_settings');

// Delete Transients
delete_transient('dpfcrs_activation_redirect');
delete_site_transient('dpfcrs_activation_redirect');
delete_transient('dpfcrs_available_spaces');
delete_site_transient('dpfcrs_available_spaces');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dpfcrs_last_sync_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dpfcrs_last_sync_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dpfcrs_last_sync_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dpfcrs_last_sync_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dpfcrs_confluence_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dpfcrs_confluence_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dpfcrs_confluence_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dpfcrs_confluence_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dpfcrs_confluence_space_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dpfcrs_confluence_space_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dpfcrs_confluence_space_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dpfcrs_confluence_space_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dpfcrs_confluence_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dpfcrs_confluence_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dpfcrs_confluence_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dpfcrs_confluence_version' ) );

