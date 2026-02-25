<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('teachable_fild_is_published');
delete_site_option('teachable_fild_is_published');
delete_option('atsew_license_key');
delete_site_option('atsew_license_key');
delete_option('atsew_license_expiry_date');
delete_site_option('atsew_license_expiry_date');
delete_option('atsew_license_last_check_date');
delete_site_option('atsew_license_last_check_date');
delete_option('teachable_fild_order_status');
delete_site_option('teachable_fild_order_status');
delete_option('teachable_fild_teachable_api_key');
delete_site_option('teachable_fild_teachable_api_key');
delete_option('teachable_fild_atsew_license_key');
delete_site_option('teachable_fild_atsew_license_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'teachable_course_id_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'teachable_course_id_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'teachable_course_id_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'teachable_course_id_%' ) );

