<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boxzilla_version');
delete_site_option('boxzilla_version');
delete_option('boxzilla_settings');
delete_site_option('boxzilla_settings');
delete_option('boxzilla_rules');
delete_site_option('boxzilla_rules');

// Delete Transients
delete_transient('boxzilla_remote_extensions');
delete_site_transient('boxzilla_remote_extensions');
delete_transient('boxzilla_request_failed');
delete_site_transient('boxzilla_request_failed');

// Clear Cron Jobs
wp_clear_scheduled_hook('boxzilla_check_license_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'boxzilla_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'boxzilla_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'boxzilla_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'boxzilla_options' ) );

