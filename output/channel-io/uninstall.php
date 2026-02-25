<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('channel_io_plugin_key');
delete_site_option('channel_io_plugin_key');
delete_option('channel_io_secret_key');
delete_site_option('channel_io_secret_key');
delete_option('channel_io_hide_default_launcher');
delete_site_option('channel_io_hide_default_launcher');
delete_option('channel_io_mobile_messenger_mode');
delete_site_option('channel_io_mobile_messenger_mode');
delete_option('channel_io_z_index');
delete_site_option('channel_io_z_index');
delete_option('channel_io_custom_launcher_selector');
delete_site_option('channel_io_custom_launcher_selector');
delete_option('channel_io_member_hash');
delete_site_option('channel_io_member_hash');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

