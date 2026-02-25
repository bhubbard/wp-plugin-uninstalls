<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfs-global-options');
delete_site_option('sfs-global-options');
delete_option('sfs-fb-credentials');
delete_site_option('sfs-fb-credentials');
delete_option('sfs-yt-credentials');
delete_site_option('sfs-yt-credentials');
delete_option('sfs-flickr-credentials');
delete_site_option('sfs-flickr-credentials');
delete_option('sfs-twitter-credentials');
delete_site_option('sfs-twitter-credentials');
delete_option('sfs-insta-credentials');
delete_site_option('sfs-insta-credentials');
delete_option('sfs-feed');
delete_site_option('sfs-feed');

// Clear Cron Jobs
wp_clear_scheduled_hook('sfs_cron_hook');
wp_clear_scheduled_hook('sfs_cron_hook_secondary');
wp_clear_scheduled_hook('sfs_cron_hook_videos');
wp_clear_scheduled_hook('sfs_cron_hook_albums');
wp_clear_scheduled_hook('sfs_cron_hook_instagram');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'feed_picture' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'feed_picture' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'feed_picture' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'feed_picture' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'feed_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'feed_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'feed_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'feed_link' ) );

