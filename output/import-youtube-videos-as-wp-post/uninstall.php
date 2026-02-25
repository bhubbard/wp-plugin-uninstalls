<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yt_to_posts_query');
delete_site_option('yt_to_posts_query');
delete_option('yt_to_posts_query_type');
delete_site_option('yt_to_posts_query_type');
delete_option('yt_to_posts_number');
delete_site_option('yt_to_posts_number');
delete_option('yt_to_posts_cat');
delete_site_option('yt_to_posts_cat');
delete_option('yt_to_posts_use_video_date');
delete_site_option('yt_to_posts_use_video_date');
delete_option('yt_to_posts_post_type');
delete_site_option('yt_to_posts_post_type');
delete_option('yt_to_posts_post_status');
delete_site_option('yt_to_posts_post_status');
delete_option('yt_to_posts_author');
delete_site_option('yt_to_posts_author');
delete_option('yt_to_posts_ck');
delete_site_option('yt_to_posts_ck');
delete_option('yt_to_posts_title_format');
delete_site_option('yt_to_posts_title_format');
delete_option('yt_to_posts_content_format');
delete_site_option('yt_to_posts_content_format');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'media_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'media_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'media_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'media_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yt_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yt_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yt_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yt_id' ) );

