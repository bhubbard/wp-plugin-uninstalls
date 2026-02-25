<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_titles');
delete_site_option('post_titles');
delete_option('section_alignment');
delete_site_option('section_alignment');
delete_option('section_bg_color');
delete_site_option('section_bg_color');
delete_option('text_color');
delete_site_option('text_color');
delete_option('success_text_color');
delete_site_option('success_text_color');
delete_option('error_text_color');
delete_site_option('error_text_color');
delete_option('alert_font_family');
delete_site_option('alert_font_family');
delete_option('alert_font_style');
delete_site_option('alert_font_style');
delete_option('alert_font_weight');
delete_site_option('alert_font_weight');
delete_option('like_bg_color');
delete_site_option('like_bg_color');
delete_option('like_color');
delete_site_option('like_color');
delete_option('like_loader_color');
delete_site_option('like_loader_color');
delete_option('like_loader_border_color');
delete_site_option('like_loader_border_color');
delete_option('dislike_bg_color');
delete_site_option('dislike_bg_color');
delete_option('dislike_color');
delete_site_option('dislike_color');
delete_option('dislike_loader_color');
delete_site_option('dislike_loader_color');
delete_option('dislike_loader_border_color');
delete_site_option('dislike_loader_border_color');
delete_option('section_padding');
delete_site_option('section_padding');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'like' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'like' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'like' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'like' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dislike' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dislike' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dislike' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dislike' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'userips' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'userips' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'userips' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'userips' ) );

