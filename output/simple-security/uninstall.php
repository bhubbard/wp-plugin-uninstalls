<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('users_page_access_log_per_page');
delete_site_option('users_page_access_log_per_page');
delete_option('simple-security-ip-blacklist');
delete_site_option('simple-security-ip-blacklist');
delete_option('simple-security-settings');
delete_site_option('simple-security-settings');
delete_option('simple_security_db_version');
delete_site_option('simple_security_db_version');
delete_option('simple_security_plugin');
delete_site_option('simple_security_plugin');
delete_option('simple_security');
delete_site_option('simple_security');
delete_option('simple_security_installed');
delete_site_option('simple_security_installed');
delete_option('simple_security_ip_blacklist');
delete_site_option('simple_security_ip_blacklist');

// Delete Transients
delete_transient('simple_security_nag');
delete_site_transient('simple_security_nag');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login' ) );

