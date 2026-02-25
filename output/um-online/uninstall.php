<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('um_online_users');
delete_site_option('um_online_users');
delete_option('um_online_users_last_updated');
delete_site_option('um_online_users_last_updated');
delete_option('um_options');
delete_site_option('um_options');
delete_option('um_online_version');
delete_site_option('um_online_version');
delete_option('um_online_last_version_upgrade');
delete_site_option('um_online_last_version_upgrade');
delete_option('widget_um_online_users');
delete_site_option('widget_um_online_users');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hide_online_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hide_online_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hide_online_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hide_online_status' ) );

