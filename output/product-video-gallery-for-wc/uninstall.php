<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('product_video_gallery_for_wc_embedVideo');
delete_site_option('product_video_gallery_for_wc_embedVideo');
delete_option('product_video_gallery_for_wc_thumb_postition');
delete_site_option('product_video_gallery_for_wc_thumb_postition');
delete_option('product_video_gallery_for_wc_setting');
delete_site_option('product_video_gallery_for_wc_setting');
delete_option('product_video_gallery_for_wc_thumb_gap');
delete_site_option('product_video_gallery_for_wc_thumb_gap');
delete_option('product_video_gallery_for_wc_thumb_img_gap');
delete_site_option('product_video_gallery_for_wc_thumb_img_gap');
delete_option('product_video_gallery_for_wc_thumb_img_round');
delete_site_option('product_video_gallery_for_wc_thumb_img_round');
delete_option('product_video_gallery_for_wc_thumb_img_numbers');
delete_site_option('product_video_gallery_for_wc_thumb_img_numbers');
delete_option('product_video_gallery_for_wc_thumb_nav_button_color');
delete_site_option('product_video_gallery_for_wc_thumb_nav_button_color');
delete_option('product_video_gallery_for_wc_thumb_nav_arrow_color');
delete_site_option('product_video_gallery_for_wc_thumb_nav_arrow_color');
delete_option('product_video_gallery_for_wc_preload');
delete_site_option('product_video_gallery_for_wc_preload');
delete_option('product_video_gallery_for_wc_autoplay');
delete_site_option('product_video_gallery_for_wc_autoplay');
delete_option('product_video_gallery_for_wc_muted');
delete_site_option('product_video_gallery_for_wc_muted');
delete_option('product_video_gallery_for_wc_loop');
delete_site_option('product_video_gallery_for_wc_loop');
delete_option('product_video_gallery_for_wc_resetOnEnd');
delete_site_option('product_video_gallery_for_wc_resetOnEnd');
delete_option('product_video_gallery_for_wc_enableSmoothSeeking');
delete_site_option('product_video_gallery_for_wc_enableSmoothSeeking');
delete_option('product_video_gallery_for_wc_playsinline');
delete_site_option('product_video_gallery_for_wc_playsinline');
delete_option('product_video_gallery_for_wc_playbackRates');
delete_site_option('product_video_gallery_for_wc_playbackRates');
delete_option('product_video_gallery_for_wc_pictureInPicture');
delete_site_option('product_video_gallery_for_wc_pictureInPicture');
delete_option('product_video_gallery_for_wc_bigPlayButton');
delete_site_option('product_video_gallery_for_wc_bigPlayButton');
delete_option('product_video_gallery_for_wc_progressControl');
delete_site_option('product_video_gallery_for_wc_progressControl');
delete_option('product_video_gallery_for_wc_remainingTimeDisplay');
delete_site_option('product_video_gallery_for_wc_remainingTimeDisplay');
delete_option('product_video_gallery_for_wc_displayNegative');
delete_site_option('product_video_gallery_for_wc_displayNegative');
delete_option('product_video_gallery_for_wc_volumeControl');
delete_site_option('product_video_gallery_for_wc_volumeControl');
delete_option('product_video_gallery_for_wc_fullscreenToggle');
delete_site_option('product_video_gallery_for_wc_fullscreenToggle');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_video_gallery_for_wc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_video_gallery_for_wc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_video_gallery_for_wc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_video_gallery_for_wc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_video_gallery_variable_for_wc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_video_gallery_variable_for_wc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_video_gallery_variable_for_wc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_video_gallery_variable_for_wc_data' ) );

