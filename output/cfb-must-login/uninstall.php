<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfb_must_login_version');
delete_site_option('cfb_must_login_version');
delete_option('cfb_must_login_require_login');
delete_site_option('cfb_must_login_require_login');
delete_option('cfb_must_login_protect_rest_api');
delete_site_option('cfb_must_login_protect_rest_api');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cfb_must_login_cache_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cfb_must_login_cache_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cfb_must_login_cache_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cfb_must_login_cache_notice_dismissed' ) );

