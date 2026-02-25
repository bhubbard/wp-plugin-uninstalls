<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boostify_blog_ai_views_refresh_interval');
delete_site_option('boostify_blog_ai_views_refresh_interval');
delete_option('boostify_blog_ai_views_auto_append');
delete_site_option('boostify_blog_ai_views_auto_append');
delete_option('boostify_blog_ai_views_auto_format');
delete_site_option('boostify_blog_ai_views_auto_format');
delete_option('boostify_blog_ai_views_auto_display');
delete_site_option('boostify_blog_ai_views_auto_display');
delete_option('boostify_schedule_settings');
delete_site_option('boostify_schedule_settings');
delete_option('boostify_blog_ai_schedule_settings');
delete_site_option('boostify_blog_ai_schedule_settings');

// Delete Transients
delete_transient('boostify_cron_started');
delete_site_transient('boostify_cron_started');

// Clear Cron Jobs
wp_clear_scheduled_hook('boostify_blog_ai_post_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'meta_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'meta_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'meta_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'meta_keywords' ) );

