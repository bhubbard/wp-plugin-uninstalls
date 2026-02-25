<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('itc_slawp_secure_login_authorization');
delete_site_option('itc_slawp_secure_login_authorization');
delete_option('itc_slawp_secure_login_authorization_plugin_access');
delete_site_option('itc_slawp_secure_login_authorization_plugin_access');
delete_option('itc_slawp_secure_login_authorization_plugin_reset_secret');
delete_site_option('itc_slawp_secure_login_authorization_plugin_reset_secret');
delete_option('itc_slawp_login_authorization_paused');
delete_site_option('itc_slawp_login_authorization_paused');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_itc_slawp_secure_login_authorization%', '_site_transient_itc_slawp_secure_login_authorization%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('itc_slawp_clear_transient_secure_login_authorization');
delete_site_transient('itc_slawp_clear_transient_secure_login_authorization');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'itc_slawp_wp_secure_access_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'itc_slawp_wp_secure_access_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'itc_slawp_wp_secure_access_expiry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'itc_slawp_wp_secure_access_expiry' ) );

