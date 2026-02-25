<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crefs_comment_redirect');
delete_site_option('crefs_comment_redirect');
delete_option('crefs_get_dofollow');
delete_site_option('crefs_get_dofollow');
delete_option('crefs_post_type');
delete_site_option('crefs_post_type');
delete_option('crefs_prevent_lq');
delete_site_option('crefs_prevent_lq');
delete_option('crefs_miscellaneous');
delete_site_option('crefs_miscellaneous');
delete_option('crefs_get_ten_posts');
delete_site_option('crefs_get_ten_posts');
delete_option('crefs_sm_integration');
delete_site_option('crefs_sm_integration');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'comment_refs_metas' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'comment_refs_metas' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'comment_refs_metas' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'comment_refs_metas' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cl_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cl_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cl_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cl_data' ) );

