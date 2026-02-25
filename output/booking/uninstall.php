<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('booking_version_num');
delete_site_option('booking_version_num');
delete_option('booking_simulate_login_as_user');
delete_site_option('booking_simulate_login_as_user');
delete_option('booking_date_format');
delete_site_option('booking_date_format');
delete_option('booking_time_format');
delete_site_option('booking_time_format');
delete_option('booking_feedback_03');
delete_site_option('booking_feedback_03');
delete_option('booking_feedback_03_rating');
delete_site_option('booking_feedback_03_rating');
delete_option('booking_is_use_captcha');
delete_site_option('booking_is_use_captcha');

// Delete Transients
delete_transient('_booking_activation_redirect');
delete_site_transient('_booking_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

