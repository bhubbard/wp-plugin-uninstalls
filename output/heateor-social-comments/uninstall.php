<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('heateor_sc_version');
delete_site_option('heateor_sc_version');
delete_option('heateor_sc');
delete_site_option('heateor_sc');
delete_option('heateor_sc_plugin_notification_read');
delete_site_option('heateor_sc_plugin_notification_read');
delete_option('heateor_sc_gdpr_notification_read');
delete_site_option('heateor_sc_gdpr_notification_read');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_heateor_sc_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_heateor_sc_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_heateor_sc_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_heateor_sc_meta' ) );

