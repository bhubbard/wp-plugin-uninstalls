<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('hey_notify_settings');
delete_site_option('hey_notify_settings');
delete_option('hey_notify_settings_general');
delete_site_option('hey_notify_settings_general');
delete_option('hey_notify_settings_licenses');
delete_site_option('hey_notify_settings_licenses');
delete_option('hey_notify_settings_uninstall');
delete_site_option('hey_notify_settings_uninstall');
delete_option('hey_notify_live_preview');
delete_site_option('hey_notify_live_preview');
delete_option('hey_notify_custom_post_types');
delete_site_option('hey_notify_custom_post_types');
delete_option('hey_notify_version');
delete_site_option('hey_notify_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'edd_api_request_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

