<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('login_lmt_blocks');
delete_site_option('login_lmt_blocks');
delete_option('login_lmt_retries');
delete_site_option('login_lmt_retries');
delete_option('login_lmt_retries_valid');
delete_site_option('login_lmt_retries_valid');
delete_option('login_lmt_blocks_total');
delete_site_option('login_lmt_blocks_total');
delete_option('site_name');
delete_site_option('site_name');
delete_option('login_lmt_logged');
delete_site_option('login_lmt_logged');
delete_option('login_lmt_client_type');
delete_site_option('login_lmt_client_type');
delete_option('login_lmt_allowed_retries');
delete_site_option('login_lmt_allowed_retries');
delete_option('login_lmt_lock_after_duration');
delete_site_option('login_lmt_lock_after_duration');
delete_option('login_lmt_allowed_blocks');
delete_site_option('login_lmt_allowed_blocks');
delete_option('login_lmt_long_duration');
delete_site_option('login_lmt_long_duration');
delete_option('login_lmt_valid_duration');
delete_site_option('login_lmt_valid_duration');
delete_option('login_lmt_lock_after_notify');
delete_site_option('login_lmt_lock_after_notify');
delete_option('login_lmt_notify_email_after');
delete_site_option('login_lmt_notify_email_after');
delete_option('login_lmt_cookies');
delete_site_option('login_lmt_cookies');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'login_lmt_previous_cookie' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'login_lmt_previous_cookie' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'login_lmt_previous_cookie' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'login_lmt_previous_cookie' ) );

