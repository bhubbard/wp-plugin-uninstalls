<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sti-settings');
delete_site_option('sti-settings');
delete_option('sti_dashboard_widget_options');
delete_site_option('sti_dashboard_widget_options');
delete_option('sti_db_version');
delete_site_option('sti_db_version');
delete_option('smart-touch-form-builder-screen-options');
delete_site_option('smart-touch-form-builder-screen-options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sti-form-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sti-form-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sti-form-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sti-form-settings' ) );

