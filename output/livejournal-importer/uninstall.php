<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ljapi_username');
delete_site_option('ljapi_username');
delete_option('ljapi_password');
delete_site_option('ljapi_password');
delete_option('ljapi_step');
delete_site_option('ljapi_step');
delete_option('ljapi_total');
delete_site_option('ljapi_total');
delete_option('ljapi_count');
delete_site_option('ljapi_count');
delete_option('ljapi_lastsync');
delete_site_option('ljapi_lastsync');
delete_option('ljapi_sync_item_times');
delete_site_option('ljapi_sync_item_times');
delete_option('ljapi_imported_count');
delete_site_option('ljapi_imported_count');
delete_option('ljapi_lastsync_posts');
delete_site_option('ljapi_lastsync_posts');
delete_option('ljapi_last_sync_count');
delete_site_option('ljapi_last_sync_count');
delete_option('ljapi_post_batch');
delete_site_option('ljapi_post_batch');
delete_option('ljapi_usermap');
delete_site_option('ljapi_usermap');
delete_option('ljapi_maxid');
delete_site_option('ljapi_maxid');
delete_option('ljapi_highest_id');
delete_site_option('ljapi_highest_id');
delete_option('ljapi_highest_comment_id');
delete_site_option('ljapi_highest_comment_id');
delete_option('ljapi_comment_batch');
delete_site_option('ljapi_comment_batch');
delete_option('ljapi_protected_password');
delete_site_option('ljapi_protected_password');
delete_option('ljapi_verified');
delete_site_option('ljapi_verified');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lj_itemid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lj_itemid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lj_itemid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lj_itemid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lj_permalink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lj_permalink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lj_permalink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lj_permalink' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'lj_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'lj_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'lj_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'lj_%' ) );

