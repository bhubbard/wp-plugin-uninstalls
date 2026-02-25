<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smet0_activation_redirect');
delete_site_option('smet0_activation_redirect');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('smet0_podcast_title');
delete_site_option('smet0_podcast_title');
delete_option('smet0_podcast_desc');
delete_site_option('smet0_podcast_desc');
delete_option('smet0_podcast_email');
delete_site_option('smet0_podcast_email');
delete_option('smet0_podcast_posts_per_page');
delete_site_option('smet0_podcast_posts_per_page');
delete_option('smet0_podcast_image');
delete_site_option('smet0_podcast_image');
delete_option('smet0_podcast_category');
delete_site_option('smet0_podcast_category');
delete_option('smet0_podcast_subcategory');
delete_site_option('smet0_podcast_subcategory');
delete_option('smet0_podcast_explicit');
delete_site_option('smet0_podcast_explicit');
delete_option('smet0_podcast_owner');
delete_site_option('smet0_podcast_owner');
delete_option('smet0_podcast_bible_passage_prefix');
delete_site_option('smet0_podcast_bible_passage_prefix');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sermon_media_bible_passage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sermon_media_bible_passage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sermon_media_bible_passage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sermon_media_bible_passage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sermon_media_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sermon_media_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sermon_media_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sermon_media_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sermon_media_mp3_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sermon_media_mp3_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sermon_media_mp3_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sermon_media_mp3_url' ) );

