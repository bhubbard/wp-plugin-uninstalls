<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('identity_login_enabled');
delete_site_option('identity_login_enabled');
delete_option('identity_key_file');
delete_site_option('identity_key_file');
delete_option('identity_cert_file');
delete_site_option('identity_cert_file');
delete_option('identity_editing_disabled');
delete_site_option('identity_editing_disabled');
delete_option('identity_key_password');
delete_site_option('identity_key_password');
delete_option('identity_ca_file');
delete_site_option('identity_ca_file');
delete_option('identity_telemetry_enabled');
delete_site_option('identity_telemetry_enabled');

// Clear Cron Jobs
wp_clear_scheduled_hook('identity_check_status_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'disable_forget_password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'disable_forget_password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'disable_forget_password' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'disable_forget_password' ) );

