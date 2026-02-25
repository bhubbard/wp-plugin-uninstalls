<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customtables-googlemapapikey');
delete_site_option('customtables-googlemapapikey');
delete_option('customtables-googledriveapikey');
delete_site_option('customtables-googledriveapikey');
delete_option('customtables-googledriveclientid');
delete_site_option('customtables-googledriveclientid');
delete_option('customtables-fieldprefix');
delete_site_option('customtables-fieldprefix');
delete_option('customtables-toolbaricons');
delete_site_option('customtables-toolbaricons');
delete_option('customtables_version');
delete_site_option('customtables_version');

// Delete Transients
delete_transient('customtables_success_message');
delete_site_transient('customtables_success_message');
delete_transient('customtables_error_message');
delete_site_transient('customtables_error_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );

