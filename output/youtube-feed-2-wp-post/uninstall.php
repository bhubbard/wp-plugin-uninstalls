<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yt2wp_youtube_api_key');
delete_site_option('yt2wp_youtube_api_key');
delete_option('yt2wp_auto_import');
delete_site_option('yt2wp_auto_import');
delete_option('yt2wp_cron_job_schedule');
delete_site_option('yt2wp_cron_job_schedule');
delete_option('yt2wp_youtube_user_id');
delete_site_option('yt2wp_youtube_user_id');
delete_option('yt2wp_post_category');
delete_site_option('yt2wp_post_category');
delete_option('yt2wp_import_attempt');
delete_site_option('yt2wp_import_attempt');
delete_option('yt2wp_youtube_next_page_token');
delete_site_option('yt2wp_youtube_next_page_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('yt2wp_youtube_video_import');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yt2wp_youtube_video_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yt2wp_youtube_video_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yt2wp_youtube_video_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yt2wp_youtube_video_id' ) );

