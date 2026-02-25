<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sarfsmtp_username');
delete_site_option('sarfsmtp_username');
delete_option('sarfsmtp_password');
delete_site_option('sarfsmtp_password');
delete_option('sarfsmtp_smtp_server');
delete_site_option('sarfsmtp_smtp_server');
delete_option('sarfsmtp_port');
delete_site_option('sarfsmtp_port');
delete_option('sarfsmtp_encryption');
delete_site_option('sarfsmtp_encryption');
delete_option('sarfsmtp_from_address');
delete_site_option('sarfsmtp_from_address');
delete_option('sarfsmtp_from_name');
delete_site_option('sarfsmtp_from_name');
delete_option('sarfsmtp_debug_mode');
delete_site_option('sarfsmtp_debug_mode');
delete_option('sarfsmtp_allow_invalid_ssl');
delete_site_option('sarfsmtp_allow_invalid_ssl');
delete_option('sarfsmtp_version');
delete_site_option('sarfsmtp_version');
delete_option('sarfsmtp_settings');
delete_site_option('sarfsmtp_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sarfsmtp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

