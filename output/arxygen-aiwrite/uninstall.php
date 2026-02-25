<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arxygen_aiwrite_private_key');
delete_site_option('arxygen_aiwrite_private_key');
delete_option('arxygen_aiwrite_advanced_logging');
delete_site_option('arxygen_aiwrite_advanced_logging');
delete_option('arxygen_aiwrite_admin_email');
delete_site_option('arxygen_aiwrite_admin_email');

// Delete Transients
delete_transient('arxygen_aiwrite_activate_redirect');
delete_site_transient('arxygen_aiwrite_activate_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('arxygen_aiwrite_remote_server_call_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'menu_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'menu_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'menu_label' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'menu_label' ) );

