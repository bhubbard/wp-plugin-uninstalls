<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfw_db_version');
delete_site_option('sfw_db_version');
delete_option('sms_for_woo_apitoken');
delete_site_option('sms_for_woo_apitoken');
delete_option('sms_for_woo_connection_user');
delete_site_option('sms_for_woo_connection_user');
delete_option('sms_for_woo_connection_password');
delete_site_option('sms_for_woo_connection_password');
delete_option('sms_for_woo_from');
delete_site_option('sms_for_woo_from');
delete_option('sms_for_woo_username');
delete_site_option('sms_for_woo_username');
delete_option('sms_for_woo_password');
delete_site_option('sms_for_woo_password');
delete_option('sms_for_woo_temp');
delete_site_option('sms_for_woo_temp');
delete_option('sms_for_woo_settings_all');
delete_site_option('sms_for_woo_settings_all');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sms_for_woo_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_message' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sms_for_woo_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sms_for_woo_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sms_for_woo_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sms_for_woo_optout' ) );

