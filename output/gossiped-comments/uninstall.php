<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gossiped_api_key');
delete_site_option('gossiped_api_key');
delete_option('gossiped_site_verified');
delete_site_option('gossiped_site_verified');
delete_option('gossiped_replace_comments');
delete_site_option('gossiped_replace_comments');
delete_option('gossiped_theme');
delete_site_option('gossiped_theme');
delete_option('gossiped_max_comments');
delete_site_option('gossiped_max_comments');
delete_option('gossiped_last_verification_attempt');
delete_site_option('gossiped_last_verification_attempt');
delete_option('gossiped_last_comment_check');
delete_site_option('gossiped_last_comment_check');
delete_option('gossiped_total_comments');
delete_site_option('gossiped_total_comments');
delete_option('gossiped_auto_add');
delete_site_option('gossiped_auto_add');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gossiped_comments_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gossiped_comments_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gossiped_comments_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gossiped_comments_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gossiped_custom_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gossiped_custom_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gossiped_custom_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gossiped_custom_theme' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gossiped_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gossiped_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gossiped_user_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gossiped_user_id' ) );

