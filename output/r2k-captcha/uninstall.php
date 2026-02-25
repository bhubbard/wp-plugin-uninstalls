<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('r2k_captcha_service');
delete_site_option('r2k_captcha_service');
delete_option('r2k_captcha_error');
delete_site_option('r2k_captcha_error');
delete_option('r2k_captcha_last_error');
delete_site_option('r2k_captcha_last_error');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'r2k_rc_last_dis_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'r2k_rc_last_dis_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'r2k_rc_last_dis_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'r2k_rc_last_dis_error' ) );

