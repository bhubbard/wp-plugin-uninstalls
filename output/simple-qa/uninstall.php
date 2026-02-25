<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qa_setting_captcha');
delete_site_option('qa_setting_captcha');
delete_option('qa_setting_captcha_publickey');
delete_site_option('qa_setting_captcha_publickey');
delete_option('qa_setting_captcha_privatekey');
delete_site_option('qa_setting_captcha_privatekey');
delete_option('qa_setting_email');
delete_site_option('qa_setting_email');
delete_option('qa_setting_default_email');
delete_site_option('qa_setting_default_email');
delete_option('qa_setting_user_response');
delete_site_option('qa_setting_user_response');
delete_option('qa_setting_number_qa');
delete_site_option('qa_setting_number_qa');
delete_option('qa_setting_default_answer');
delete_site_option('qa_setting_default_answer');
delete_option('qa_setting_background_open');
delete_site_option('qa_setting_background_open');
delete_option('qa_setting_background_close');
delete_site_option('qa_setting_background_close');

// Delete Transients
delete_transient('qa-admin-notice');
delete_site_transient('qa-admin-notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qa_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qa_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qa_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qa_username' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qa_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qa_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qa_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qa_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qa_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qa_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qa_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qa_ip' ) );

