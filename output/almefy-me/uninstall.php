<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('almefy-api-key');
delete_site_option('almefy-api-key');
delete_option('almefy-api-secret');
delete_site_option('almefy-api-secret');
delete_option('almefy-api-enabled');
delete_site_option('almefy-api-enabled');
delete_option('almefy-api-redirect');
delete_site_option('almefy-api-redirect');
delete_option('almefy-connect-in-login');
delete_site_option('almefy-connect-in-login');
delete_option('almefy-session-timeout');
delete_site_option('almefy-session-timeout');
delete_option('almefy_plugin_version');
delete_site_option('almefy_plugin_version');
delete_option('almefy-mail-connect-on-register');
delete_site_option('almefy-mail-connect-on-register');
delete_option('almefy-redirect-wizard');
delete_site_option('almefy-redirect-wizard');
delete_option('almefy-mail-disable-welcome');
delete_site_option('almefy-mail-disable-welcome');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'created_by_almefy_console' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'created_by_almefy_console' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'created_by_almefy_console' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'created_by_almefy_console' ) );

