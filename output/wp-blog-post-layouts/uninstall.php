<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpblog_post_layouts_activated_time');
delete_site_option('wpblog_post_layouts_activated_time');
delete_option('wpblog_post_layouts_upgrade_premium');
delete_site_option('wpblog_post_layouts_upgrade_premium');
delete_option('wpblog_post_layouts_premium_prefix');
delete_site_option('wpblog_post_layouts_premium_prefix');

// Delete Transients
delete_transient('wp-blog-post-layouts-admin-notice');
delete_site_transient('wp-blog-post-layouts-admin-notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_blog_post_layouts_ignore_review_notice_partially' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_blog_post_layouts_ignore_review_notice_partially' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_blog_post_layouts_ignore_review_notice_partially' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_blog_post_layouts_ignore_review_notice_partially' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_blog_post_layouts_ignore_theme_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_blog_post_layouts_ignore_theme_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_blog_post_layouts_ignore_theme_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_blog_post_layouts_ignore_theme_review_notice' ) );

