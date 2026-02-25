<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmapi_server_url');
delete_site_option('pmapi_server_url');
delete_option('pmapi_api_dir');
delete_site_option('pmapi_api_dir');
delete_option('pmapi_api_password');
delete_site_option('pmapi_api_password');
delete_option('pmapi_site_password');
delete_site_option('pmapi_site_password');
delete_option('pmapi_version');
delete_site_option('pmapi_version');
delete_option('pmapi_avatar_max');
delete_site_option('pmapi_avatar_max');
delete_option('pmapi_useradmin');
delete_site_option('pmapi_useradmin');
delete_option('pmapi_gameadmin');
delete_site_option('pmapi_gameadmin');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pmapi_oldpwhash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pmapi_oldpwhash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pmapi_oldpwhash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pmapi_oldpwhash' ) );

