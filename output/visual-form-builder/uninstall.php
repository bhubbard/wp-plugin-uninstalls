<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vfb_dashboard_widget_options');
delete_site_option('vfb_dashboard_widget_options');
delete_option('vfb-settings');
delete_site_option('vfb-settings');
delete_option('vfb_db_version');
delete_site_option('vfb_db_version');
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('visual-form-builder-screen-options');
delete_site_option('visual-form-builder-screen-options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vfb-form-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vfb-form-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vfb-form-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vfb-form-settings' ) );

