<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_cbox_current_package');
delete_site_option('_cbox_current_package');
delete_option('_cbox_revision_date');
delete_site_option('_cbox_revision_date');
delete_option('_cbox_theme_activated');
delete_site_option('_cbox_theme_activated');
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('cboxol_ver');
delete_site_option('cboxol_ver');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('cbox_deactivate_cascade');
delete_site_transient('cbox_deactivate_cascade');
delete_transient('_bp_activation_redirect');
delete_site_transient('_bp_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'show_cbox_welcome_panel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'show_cbox_welcome_panel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'show_cbox_welcome_panel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'show_cbox_welcome_panel' ) );

