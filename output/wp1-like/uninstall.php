<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp1_like_button_text');
delete_site_option('wp1_like_button_text');
delete_option('wp1_like_show_count');
delete_site_option('wp1_like_show_count');
delete_option('wp1_like_thumb_icon');
delete_site_option('wp1_like_thumb_icon');
delete_option('wp1_like_post_types');
delete_site_option('wp1_like_post_types');
delete_option('wp1_like_button_color');
delete_site_option('wp1_like_button_color');
delete_option('wp1_like_button_hover_color');
delete_site_option('wp1_like_button_hover_color');
delete_option('wp1_like_button_disabled_color');
delete_site_option('wp1_like_button_disabled_color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp1_like_like' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp1_like_like' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp1_like_like' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp1_like_like' ) );

