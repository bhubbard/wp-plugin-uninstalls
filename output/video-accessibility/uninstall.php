<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('video_accessibility_statement');
delete_site_option('video_accessibility_statement');
delete_option('video_accessibility_youtube_api_key');
delete_site_option('video_accessibility_youtube_api_key');
delete_option('video_accessibility_youtube_nocookie');
delete_site_option('video_accessibility_youtube_nocookie');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'video_accessibility_transcript' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'video_accessibility_transcript' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'video_accessibility_transcript' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'video_accessibility_transcript' ) );

