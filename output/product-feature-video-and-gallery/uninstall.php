<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('videoshop_info');
delete_site_option('videoshop_info');
delete_option('videoshop_template');
delete_site_option('videoshop_template');
delete_option('videoshop_slider_layout');
delete_site_option('videoshop_slider_layout');
delete_option('videoshop_slider_responsive');
delete_site_option('videoshop_slider_responsive');
delete_option('videoshop_sliderautoplay');
delete_site_option('videoshop_sliderautoplay');
delete_option('videoshop_slider_swipe');
delete_site_option('videoshop_slider_swipe');
delete_option('videoshop_sliderfade');
delete_site_option('videoshop_sliderfade');
delete_option('videoshop_arrowinfinite');
delete_site_option('videoshop_arrowinfinite');
delete_option('videoshop_arrowdisable');
delete_site_option('videoshop_arrowdisable');
delete_option('videoshop_arrow_thumb');
delete_site_option('videoshop_arrow_thumb');
delete_option('custom_icon');
delete_site_option('custom_icon');
delete_option('videoshop_show_lightbox');
delete_site_option('videoshop_show_lightbox');
delete_option('videoshop_show_zoom');
delete_site_option('videoshop_show_zoom');
delete_option('videoshop_zoomlevel');
delete_site_option('videoshop_zoomlevel');
delete_option('videoshop_gallery_action');
delete_site_option('videoshop_gallery_action');
delete_option('videoshop_hide_thumbnails');
delete_site_option('videoshop_hide_thumbnails');
delete_option('videoshop_hide_thumbnail');
delete_site_option('videoshop_hide_thumbnail');
delete_option('videoshop_thumbnails_to_show');
delete_site_option('videoshop_thumbnails_to_show');
delete_option('videoshop_adaptive_height');
delete_site_option('videoshop_adaptive_height');
delete_option('videoshop_show_only_video');
delete_site_option('videoshop_show_only_video');
delete_option('videoshop_controls');
delete_site_option('videoshop_controls');
delete_option('videoshop_videoloop');
delete_site_option('videoshop_videoloop');
delete_option('videoshop_vid_autoplay');
delete_site_option('videoshop_vid_autoplay');
delete_option('videoshop_place_of_the_video');
delete_site_option('videoshop_place_of_the_video');
delete_option('videoshop_arrowcolor');
delete_site_option('videoshop_arrowcolor');
delete_option('videoshop_arrowbgcolor');
delete_site_option('videoshop_arrowbgcolor');
delete_option('videoshop_aspect_ratio');
delete_site_option('videoshop_aspect_ratio');
delete_option('videoshop_on_shop_page');
delete_site_option('videoshop_on_shop_page');
delete_option('videoshop_options');
delete_site_option('videoshop_options');

// Delete Transients
delete_transient('videoshop-plugin_setting_notice');
delete_site_transient('videoshop-plugin_setting_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_videoshop_product_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_videoshop_product_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_videoshop_product_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_videoshop_product_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_videoshop_video_text_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_videoshop_video_text_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_videoshop_video_text_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_videoshop_video_text_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_videoshop_product_video_thumb_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_videoshop_product_video_thumb_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_videoshop_product_video_thumb_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_videoshop_product_video_thumb_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_custom_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_custom_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_custom_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_custom_thumbnail' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_video_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_video_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_video_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_video_schema' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_videoshop_video_upload_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_videoshop_video_upload_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_videoshop_video_upload_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_videoshop_video_upload_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_videoshop_video_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_videoshop_video_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_videoshop_video_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_videoshop_video_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_videoshop_video_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_videoshop_video_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_videoshop_video_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_videoshop_video_description' ) );

