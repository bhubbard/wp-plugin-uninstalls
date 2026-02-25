<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bql_login_form');
delete_site_option('bql_login_form');
delete_option('bql_expire_time');
delete_site_option('bql_expire_time');
delete_option('bql_keep_logged_in');
delete_site_option('bql_keep_logged_in');
delete_option('bql_force_one_session');
delete_site_option('bql_force_one_session');
delete_option('bql_recaptcha_key');
delete_site_option('bql_recaptcha_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'quicklogin_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'quicklogin_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'quicklogin_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'quicklogin_token' ) );

