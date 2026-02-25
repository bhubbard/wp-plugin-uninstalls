<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eslgp_settings');
delete_site_option('eslgp_settings');
delete_option('eslgp_show_setup_notice');
delete_site_option('eslgp_show_setup_notice');
delete_option('eslgp_wizard_progress');
delete_site_option('eslgp_wizard_progress');

// Delete Transients
delete_transient('eslgp_plugin_last_error');
delete_site_transient('eslgp_plugin_last_error');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'google_profile_picture' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'google_profile_picture' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'google_profile_picture' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'google_profile_picture' ) );

