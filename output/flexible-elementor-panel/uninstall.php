<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_elementor_fep_settings');
delete_site_option('_elementor_fep_settings');
delete_option('fep_informations');
delete_site_option('fep_informations');
delete_option('fep_how_to_configure');
delete_site_option('fep_how_to_configure');
delete_option('fep_debug');
delete_site_option('fep_debug');

// Delete Transients
delete_transient('fep-admin-notice-migration-done');
delete_site_transient('fep-admin-notice-migration-done');
delete_transient('fep-admin-notice-activation');
delete_site_transient('fep-admin-notice-activation');
delete_transient('fep-admin-notice-update-user-preferences');
delete_site_transient('fep-admin-notice-update-user-preferences');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'elementor_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'elementor_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'elementor_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'elementor_preferences' ) );

