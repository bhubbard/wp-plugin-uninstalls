<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('posts_visitors_label_text');
delete_site_option('posts_visitors_label_text');
delete_option('posts_visitors_checkbox_label');
delete_site_option('posts_visitors_checkbox_label');
delete_option('posts_visitors_checkbox_icon');
delete_site_option('posts_visitors_checkbox_icon');
delete_option('posts_visitors_icon_class');
delete_site_option('posts_visitors_icon_class');
delete_option('posts_visitors_color');
delete_site_option('posts_visitors_color');
delete_option('posts_visitors_select');
delete_site_option('posts_visitors_select');
delete_option('posts_visitors_general');
delete_site_option('posts_visitors_general');
delete_option('posts_visitors_shortcode');
delete_site_option('posts_visitors_shortcode');
delete_option('posts_visitors_shorcode');
delete_site_option('posts_visitors_shorcode');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'post_visitors_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'post_visitors_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'post_visitors_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'post_visitors_count' ) );

