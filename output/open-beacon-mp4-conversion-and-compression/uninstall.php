<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ob_mp4_cc_ffmpeg_path');
delete_site_option('ob_mp4_cc_ffmpeg_path');
delete_option('ob_mp4_cc_ffmpeg_exists');
delete_site_option('ob_mp4_cc_ffmpeg_exists');
delete_option('ob_mp4_cc_max_video_size');
delete_site_option('ob_mp4_cc_max_video_size');
delete_option('ob_mp4_cc_system_environment_section');
delete_site_option('ob_mp4_cc_system_environment_section');
delete_option('ob_mp4_cc_ffmpeg_speed');
delete_site_option('ob_mp4_cc_ffmpeg_speed');
delete_option('ob_mp4_cc_ffmpeg_quality');
delete_site_option('ob_mp4_cc_ffmpeg_quality');
delete_option('ob_mp4_cc_category_children');
delete_site_option('ob_mp4_cc_category_children');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_video_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_video_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_video_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_video_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

