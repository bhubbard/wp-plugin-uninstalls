<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('m2a_after_post');
delete_site_option('m2a_after_post');
delete_option('m2a_allow_visitor');
delete_site_option('m2a_allow_visitor');
delete_option('m2a_layout');
delete_site_option('m2a_layout');
delete_option('m2a_style');
delete_site_option('m2a_style');
delete_option('m2a_labels');
delete_site_option('m2a_labels');
delete_option('m2a_captcha_flag');
delete_site_option('m2a_captcha_flag');
delete_option('m2a_captcha_conf');
delete_site_option('m2a_captcha_conf');
delete_option('m2a_mail_setting');
delete_site_option('m2a_mail_setting');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'message' ) );

