<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lpwc_comment_rules');
delete_site_option('lpwc_comment_rules');
delete_option('lpwc_show_comment_rules');
delete_site_option('lpwc_show_comment_rules');
delete_option('lpwc_info');
delete_site_option('lpwc_info');
delete_option('lpwc_display_feature_notification');
delete_site_option('lpwc_display_feature_notification');
delete_option('lpwc');
delete_site_option('lpwc');
delete_option('lpwc_disable_flood_protection');
delete_site_option('lpwc_disable_flood_protection');
delete_option('lpwc_allow_duplicate_comments');
delete_site_option('lpwc_allow_duplicate_comments');
delete_option('lpwc_global_max_comments');
delete_site_option('lpwc_global_max_comments');
delete_option('rules');
delete_site_option('rules');
delete_option('lpwc_user_reviewed');
delete_site_option('lpwc_user_reviewed');
delete_option('lpwc_nag_dismissed_time');
delete_site_option('lpwc_nag_dismissed_time');
delete_option('lpwc_show_notification');
delete_site_option('lpwc_show_notification');
delete_option('lpwc_install_time');
delete_site_option('lpwc_install_time');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lpwc_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lpwc_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lpwc_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lpwc_last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_exclude_comments_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_exclude_comments_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_exclude_comments_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_exclude_comments_limit' ) );

