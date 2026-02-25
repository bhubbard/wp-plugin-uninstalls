<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_setting' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_bsp_optin');
delete_site_option('_bsp_optin');
delete_option('1.0');
delete_site_option('1.0');
delete_option('wcj_order_number_prefix');
delete_site_option('wcj_order_number_prefix');
delete_option('bsp_gateway_credentials_front_page_options');
delete_site_option('bsp_gateway_credentials_front_page_options');
delete_option('bsp_order_verification_front_page_options');
delete_site_option('bsp_order_verification_front_page_options');
delete_option('bsp_messages_text_front_page_options');
delete_site_option('bsp_messages_text_front_page_options');
delete_option('bsp_support_front_page_options');
delete_site_option('bsp_support_front_page_options');

// Delete Transients
delete_transient('fx-admin-notice-test');
delete_site_transient('fx-admin-notice-test');
delete_transient('fx-admin-notice-example');
delete_site_transient('fx-admin-notice-example');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dvs_courier_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dvs_courier_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dvs_courier_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dvs_courier_tracking' ) );

