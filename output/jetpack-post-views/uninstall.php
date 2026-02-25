<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetpack_post_views_wp_api_key');
delete_site_option('jetpack_post_views_wp_api_key');
delete_option('jetpack_post_views_settings');
delete_site_option('jetpack_post_views_settings');
delete_option('jetpack-post-views_version');
delete_site_option('jetpack-post-views_version');
delete_option('jetpack_post_views_stats_has_run');
delete_site_option('jetpack_post_views_stats_has_run');
delete_option('jetpack_post_views');
delete_site_option('jetpack_post_views');

// Clear Cron Jobs
wp_clear_scheduled_hook('jetpack_post_views_scheduled_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jetpack-post-views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jetpack-post-views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jetpack-post-views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jetpack-post-views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'jetpack-post-views-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'jetpack-post-views-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'jetpack-post-views-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'jetpack-post-views-%' ) );

