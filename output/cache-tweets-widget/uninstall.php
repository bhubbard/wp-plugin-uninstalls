<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_visearch_tweets_widget');
delete_site_option('widget_visearch_tweets_widget');
delete_option('visearch_tweets');
delete_site_option('visearch_tweets');
delete_option('visearch_tweets_cache');
delete_site_option('visearch_tweets_cache');
delete_option('visearch_tweets_hashtag');
delete_site_option('visearch_tweets_hashtag');
delete_option('visearch_tweets_username');
delete_site_option('visearch_tweets_username');
delete_option('visearch_tweets_select_option');
delete_site_option('visearch_tweets_select_option');
delete_option('visearch_tweets_details');
delete_site_option('visearch_tweets_details');

