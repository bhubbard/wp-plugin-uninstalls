<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nickx_slider_layout');
delete_site_option('nickx_slider_layout');
delete_option('nickx_sliderautoplay');
delete_site_option('nickx_sliderautoplay');
delete_option('nickx_arrowinfinite');
delete_site_option('nickx_arrowinfinite');
delete_option('nickx_arrowdisable');
delete_site_option('nickx_arrowdisable');
delete_option('nickx_arrow_thumb');
delete_site_option('nickx_arrow_thumb');
delete_option('nickx_hide_thumbnails');
delete_site_option('nickx_hide_thumbnails');
delete_option('nickx_gallery_action');
delete_site_option('nickx_gallery_action');
delete_option('nickx_adaptive_height');
delete_site_option('nickx_adaptive_height');
delete_option('nickx_place_of_the_video');
delete_site_option('nickx_place_of_the_video');
delete_option('nickx_rtl');
delete_site_option('nickx_rtl');
delete_option('nickx_videoloop');
delete_site_option('nickx_videoloop');
delete_option('nickx_vid_autoplay');
delete_site_option('nickx_vid_autoplay');
delete_option('nickx_template');
delete_site_option('nickx_template');
delete_option('nickx_controls');
delete_site_option('nickx_controls');
delete_option('nickx_show_lightbox');
delete_site_option('nickx_show_lightbox');
delete_option('nickx_show_zoom');
delete_site_option('nickx_show_zoom');
delete_option('nickx_show_only_video');
delete_site_option('nickx_show_only_video');
delete_option('nickx_thumbnails_to_show');
delete_site_option('nickx_thumbnails_to_show');
delete_option('nickx_arrowcolor');
delete_site_option('nickx_arrowcolor');
delete_option('nickx_arrowbgcolor');
delete_site_option('nickx_arrowbgcolor');
delete_option('wc_product_iframe_token');
delete_site_option('wc_product_iframe_token');
delete_option('custom_icon');
delete_site_option('custom_icon');
delete_option('nickx_options');
delete_site_option('nickx_options');

// Delete Transients
delete_transient('nickx-plugin_setting_notice');
delete_site_transient('nickx-plugin_setting_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nickx_product_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nickx_product_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nickx_product_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nickx_product_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_custom_api_product_url_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_custom_api_product_url_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_custom_api_product_url_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_custom_api_product_url_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_video_thumb_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_video_thumb_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_video_thumb_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_video_thumb_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_custom_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_custom_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_custom_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_custom_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_custom_api_product_thumbnail_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_custom_api_product_thumbnail_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_custom_api_product_thumbnail_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_custom_api_product_thumbnail_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_custom_api_product_id_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_custom_api_product_id_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_custom_api_product_id_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_custom_api_product_id_' ) );

