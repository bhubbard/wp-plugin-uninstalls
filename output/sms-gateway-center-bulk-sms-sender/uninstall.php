<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sgcsms_default_sendername');
delete_site_option('sgcsms_default_sendername');
delete_option('sgcsms_default_routing');
delete_site_option('sgcsms_default_routing');
delete_option('sgcsms_username');
delete_site_option('sgcsms_username');
delete_option('sgcsms_password');
delete_site_option('sgcsms_password');
delete_option('sgcsms_apiname');
delete_site_option('sgcsms_apiname');
delete_option('sgcsms_otp_settings_option_name');
delete_site_option('sgcsms_otp_settings_option_name');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sgcsmsotpattempts_%', '_site_transient_sgcsmsotpattempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sgcsmsotp_validated_%', '_site_transient_sgcsmsotp_validated_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sgcsms_user_mobile_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sgcsms_user_mobile_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sgcsms_user_mobile_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sgcsms_user_mobile_number' ) );

