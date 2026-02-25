<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsms_gateway_credit');
delete_site_option('wpsms_gateway_credit');
delete_option('wpsms_hide_newsletter');
delete_site_option('wpsms_hide_newsletter');
delete_option('wpsms_show_welcome_page');
delete_site_option('wpsms_show_welcome_page');
delete_option('wpsms_first_show_welcome_page');
delete_site_option('wpsms_first_show_welcome_page');
delete_option('wp_sms_db_version');
delete_site_option('wp_sms_db_version');
delete_option('wp_notification_new_wp_version');
delete_site_option('wp_notification_new_wp_version');
delete_option('wp_last_credit');
delete_site_option('wp_last_credit');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpcf7_sms_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpcf7_sms_form%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_last_send_notification');
delete_site_option('wp_last_send_notification');
delete_option('wpsms_settings');
delete_site_option('wpsms_settings');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mobile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mobile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mobile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mobile' ) );

