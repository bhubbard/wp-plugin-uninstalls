<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customer_notes_install_time');
delete_site_option('customer_notes_install_time');
delete_option('allow_user_edit');
delete_site_option('allow_user_edit');
delete_option('allow_order_edit');
delete_site_option('allow_order_edit');
delete_option('enable_sticky_note');
delete_site_option('enable_sticky_note');
delete_option('customer_notes_review_notice_dismissed');
delete_site_option('customer_notes_review_notice_dismissed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'custom_textarea' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'custom_textarea' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'custom_textarea' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'custom_textarea' ) );

