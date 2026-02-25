<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grfwp-settings');
delete_site_option('grfwp-settings');
delete_option('GRFWP_Trial_Happening');
delete_site_option('GRFWP_Trial_Happening');
delete_option('grfwp-installation-time');
delete_site_option('grfwp-installation-time');
delete_option('grfwp-permission-level');
delete_site_option('grfwp-permission-level');
delete_option('grfwp-review-ask-time');
delete_site_option('grfwp-review-ask-time');

// Delete Transients
delete_transient('fsp-helper-notice-dismissed');
delete_site_transient('fsp-helper-notice-dismissed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'grfwp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'grfwp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'grfwp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'grfwp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fdm_menu_item_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fdm_menu_item_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fdm_menu_item_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fdm_menu_item_id' ) );

