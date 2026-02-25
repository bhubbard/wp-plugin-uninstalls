<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('itap_interval_time');
delete_site_option('itap_interval_time');
delete_option('itap_post_type');
delete_site_option('itap_post_type');
delete_option('itap_user_id');
delete_site_option('itap_user_id');
delete_option('itap_search_string');
delete_site_option('itap_search_string');
delete_option('itap_consumer_key');
delete_site_option('itap_consumer_key');
delete_option('itap_consumer_secret');
delete_site_option('itap_consumer_secret');
delete_option('itap_access_token');
delete_site_option('itap_access_token');
delete_option('itap_access_token_secret');
delete_site_option('itap_access_token_secret');
delete_option('itap_tweet_from');
delete_site_option('itap_tweet_from');
delete_option('itap_search_result_type');
delete_site_option('itap_search_result_type');
delete_option('itap_tweets_count');
delete_site_option('itap_tweets_count');
delete_option('itap_assigned_category');
delete_site_option('itap_assigned_category');
delete_option('itap_post_status');
delete_site_option('itap_post_status');
delete_option('itap_post_comment_status');
delete_site_option('itap_post_comment_status');
delete_option('itap_import_retweets');
delete_site_option('itap_import_retweets');
delete_option('itap_exclude_replies');
delete_site_option('itap_exclude_replies');
delete_option('itap_display_retweets_username');
delete_site_option('itap_display_retweets_username');
delete_option('itap_wp_time_as_published_date');
delete_site_option('itap_wp_time_as_published_date');
delete_option('itap_post_title');
delete_site_option('itap_post_title');
delete_option('itap_post_title_limit');
delete_site_option('itap_post_title_limit');

// Clear Cron Jobs
wp_clear_scheduled_hook('import_tweets_as_posts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tweet_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tweet_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tweet_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tweet_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tweet_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tweet_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tweet_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tweet_url' ) );

