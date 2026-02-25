<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('i4t3_gnrl_options');
delete_site_option('i4t3_gnrl_options');
delete_option('i4t3_version_no');
delete_site_option('i4t3_version_no');
delete_option('i4t3_review_notice');
delete_site_option('i4t3_review_notice');
delete_option('i4t3_db_version');
delete_site_option('i4t3_db_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'i4t3_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'i4t3_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'i4t3_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'i4t3_review_notice_dismissed' ) );

