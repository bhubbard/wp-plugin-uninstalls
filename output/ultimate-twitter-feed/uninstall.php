<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('utf_consumer_key');
delete_site_option('utf_consumer_key');
delete_option('utf_consumer_secret');
delete_site_option('utf_consumer_secret');
delete_option('utf_access_token');
delete_site_option('utf_access_token');
delete_option('utf_access_token_secret');
delete_site_option('utf_access_token_secret');
delete_option('utf_shortcodes');
delete_site_option('utf_shortcodes');
delete_option('utf_urls');
delete_site_option('utf_urls');
delete_option('utf_cache_option');
delete_site_option('utf_cache_option');
delete_option('utf_cache_in_minutes');
delete_site_option('utf_cache_in_minutes');
delete_option('utf_date_of_tweet');
delete_site_option('utf_date_of_tweet');
delete_option('utf_replies_icon');
delete_site_option('utf_replies_icon');
delete_option('utf_retweets_icon');
delete_site_option('utf_retweets_icon');
delete_option('utf_favorites_icon');
delete_site_option('utf_favorites_icon');
delete_option('utf_hide_videos');
delete_site_option('utf_hide_videos');
delete_option('utf_hide_images');
delete_site_option('utf_hide_images');
delete_option('utf_size_images');
delete_site_option('utf_size_images');

