<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plui_enabled');
delete_site_option('plui_enabled');
delete_option('plui_custom_text');
delete_site_option('plui_custom_text');
delete_option('plui_display_position');
delete_site_option('plui_display_position');
delete_option('plui_disable_on_single_pages');
delete_site_option('plui_disable_on_single_pages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_plui_disable_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_plui_disable_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_plui_disable_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_plui_disable_last_update' ) );

