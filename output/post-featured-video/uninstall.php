<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pfv_seetings_opt');
delete_site_option('pfv_seetings_opt');
delete_option('pfv_autoply_video');
delete_site_option('pfv_autoply_video');
delete_option('pfv_open_vid_inpopup');
delete_site_option('pfv_open_vid_inpopup');
delete_option('vpfy_disply_video');
delete_site_option('vpfy_disply_video');
delete_option('pfvvideoheight');
delete_site_option('pfvvideoheight');
delete_option('pfv_video_display_only_single_post');
delete_site_option('pfv_video_display_only_single_post');
delete_option('pfvideo_pst_adminnotice');
delete_site_option('pfvideo_pst_adminnotice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pfv_vimeo_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pfv_vimeo_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pfv_vimeo_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pfv_vimeo_video_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pfv_custom_vid_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pfv_custom_vid_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pfv_custom_vid_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pfv_custom_vid_url' ) );

