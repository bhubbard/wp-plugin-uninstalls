<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pay-post-by-sms-allowed-ip-address');
delete_site_option('pay-post-by-sms-allowed-ip-address');
delete_option('pay-post-by-sms-shortcode');
delete_site_option('pay-post-by-sms-shortcode');
delete_option('pay-post-by-sms-keyword');
delete_site_option('pay-post-by-sms-keyword');
delete_option('pay-post-by-sms-price');
delete_site_option('pay-post-by-sms-price');
delete_option('pay-post-by-sms-get-phone-key');
delete_site_option('pay-post-by-sms-get-phone-key');
delete_option('pay-post-by-sms-get-shortcode-key');
delete_site_option('pay-post-by-sms-get-shortcode-key');
delete_option('pay-post-by-sms-get-message-key');
delete_site_option('pay-post-by-sms-get-message-key');
delete_option('pay-post-by-sms-get-transactionid-key');
delete_site_option('pay-post-by-sms-get-transactionid-key');
delete_option('pay_post_by_sms');
delete_site_option('pay_post_by_sms');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pay_post_by_sms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pay_post_by_sms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pay_post_by_sms' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pay_post_by_sms' ) );

