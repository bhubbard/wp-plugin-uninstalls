<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cnb');
delete_site_option('cnb');
delete_option('cnb_email_activation_wp_nonce');
delete_site_option('cnb_email_activation_wp_nonce');
delete_option('cnb_cloud_migration_done');
delete_site_option('cnb_cloud_migration_done');
delete_option('cnb_css_location');
delete_site_option('cnb_css_location');
delete_option('cnb_js_location');
delete_site_option('cnb_js_location');
delete_option('cnb_user_root');
delete_site_option('cnb_user_root');
delete_option('cnb_static_root');
delete_site_option('cnb_static_root');
delete_option('cnb_chat_root');
delete_site_option('cnb_chat_root');
delete_option('cnb_storage_type');
delete_site_option('cnb_storage_type');

// Delete Transients
delete_transient('cnb_activation');
delete_site_transient('cnb_activation');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%total_buttons', '_site_transient_%total_buttons' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%active_buttons', '_site_transient_%active_buttons' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%total_actions', '_site_transient_%total_actions' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('cnb-options');
delete_site_transient('cnb-options');

