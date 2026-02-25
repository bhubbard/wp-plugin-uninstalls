<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loginwp_from_ab_initio');
delete_site_option('loginwp_from_ab_initio');
delete_option('loginwp_install_date');
delete_site_option('loginwp_install_date');
delete_option('loginwp_free_license');
delete_site_option('loginwp_free_license');
delete_option('rul_settings');
delete_site_option('rul_settings');
delete_option('rul_version');
delete_site_option('rul_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%user_roles' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wo_dismiss_adnotice');
delete_site_option('wo_dismiss_adnotice');
delete_option('loginwp_settings');
delete_site_option('loginwp_settings');
delete_option('loginwp_redirection_settings');
delete_site_option('loginwp_redirection_settings');
delete_option('loginwp_license_status');
delete_site_option('loginwp_license_status');
delete_option('loginwp_license_expired_status');
delete_site_option('loginwp_license_expired_status');
delete_option('loginwp_license_key');
delete_site_option('loginwp_license_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pand-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'loginwp_first_time_login_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'loginwp_first_time_login_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'loginwp_first_time_login_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'loginwp_first_time_login_flag' ) );

