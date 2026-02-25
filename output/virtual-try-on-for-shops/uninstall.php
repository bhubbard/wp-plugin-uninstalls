<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vtofs_settings');
delete_site_option('vtofs_settings');
delete_option('vtofs_plugin_version');
delete_site_option('vtofs_plugin_version');
delete_option('vtofs_onboarding');
delete_site_option('vtofs_onboarding');
delete_option('vtofs_free_usage');
delete_site_option('vtofs_free_usage');

// Delete Transients
delete_transient('vtofs_do_activation_redirect');
delete_site_transient('vtofs_do_activation_redirect');
delete_transient('vtofs_license_check');
delete_site_transient('vtofs_license_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vtofs_tryon_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vtofs_tryon_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vtofs_tryon_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vtofs_tryon_enabled' ) );

