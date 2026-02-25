<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ocv_video_post_title');
delete_site_option('ocv_video_post_title');
delete_option('ocv_video_post_description');
delete_site_option('ocv_video_post_description');
delete_option('ocv_video_width');
delete_site_option('ocv_video_width');
delete_option('ocv_video_height');
delete_site_option('ocv_video_height');
delete_option('ocv_syndication_key');
delete_site_option('ocv_syndication_key');
delete_option('ocv_video_autoplay');
delete_site_option('ocv_video_autoplay');
delete_option('ocv_video_post_format');
delete_site_option('ocv_video_post_format');
delete_option('ocv_video_post_status');
delete_site_option('ocv_video_post_status');
delete_option('ocv_custom_field_video_embed');
delete_site_option('ocv_custom_field_video_embed');
delete_option('youtube_related');
delete_site_option('youtube_related');
delete_option('youtube_controls');
delete_site_option('youtube_controls');
delete_option('youtube_showinfo');
delete_site_option('youtube_showinfo');
delete_option('ocv_related');
delete_site_option('ocv_related');
delete_option('ocv_controls');
delete_site_option('ocv_controls');
delete_option('ocv_showinfo');
delete_site_option('ocv_showinfo');
delete_option('youtube_size');
delete_site_option('youtube_size');
delete_option('ocv_size');
delete_site_option('ocv_size');
delete_option('vimeo_size');
delete_site_option('vimeo_size');
delete_option('youtube_autoplay');
delete_site_option('youtube_autoplay');
delete_option('vimeo_autoplay');
delete_site_option('vimeo_autoplay');
delete_option('parent_cat_id_hidden');
delete_site_option('parent_cat_id_hidden');
delete_option('child_cat_id_hidden');
delete_site_option('child_cat_id_hidden');
delete_option('subchild_cat_id_hidden');
delete_site_option('subchild_cat_id_hidden');
delete_option('ocv_familyfilter');
delete_site_option('ocv_familyfilter');
delete_option('youtube_public_key');
delete_site_option('youtube_public_key');
delete_option('vimeo_client_id');
delete_site_option('vimeo_client_id');
delete_option('vimeo_client_secret');
delete_site_option('vimeo_client_secret');
delete_option('vimeo_parent_cat_id_hidden');
delete_site_option('vimeo_parent_cat_id_hidden');
delete_option('vimeo_child_cat_id_hidden');
delete_site_option('vimeo_child_cat_id_hidden');
delete_option('vimeo_subchild_cat_id_hidden');
delete_site_option('vimeo_subchild_cat_id_hidden');
delete_option('youtube_parent_cat_id_hidden');
delete_site_option('youtube_parent_cat_id_hidden');
delete_option('youtube_child_cat_id_hidden');
delete_site_option('youtube_child_cat_id_hidden');
delete_option('youtube_subchild_cat_id_hidden');
delete_site_option('youtube_subchild_cat_id_hidden');
delete_option('video_source');
delete_site_option('video_source');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'time_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'time_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'time_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'time_video' ) );

