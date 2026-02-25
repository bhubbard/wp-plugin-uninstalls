<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmip-embed');
delete_site_option('tmip-embed');
delete_option('tmip-mention-text');
delete_site_option('tmip-mention-text');
delete_option('tmip-num-of-tweets');
delete_site_option('tmip-num-of-tweets');
delete_option('tmip-automatic');
delete_site_option('tmip-automatic');

// Clear Cron Jobs
wp_clear_scheduled_hook('tmip_hour_event');
wp_clear_scheduled_hook('tmip_load_post_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tmip_twitter_mentions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tmip_twitter_mentions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tmip_twitter_mentions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tmip_twitter_mentions' ) );

