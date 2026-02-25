<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_post_to_twitter_twitter_tlitlapikey');
delete_site_option('wp_post_to_twitter_twitter_tlitlapikey');
delete_option('wp_post_to_twitter_twitter_consumer_key');
delete_site_option('wp_post_to_twitter_twitter_consumer_key');
delete_option('wp_post_to_twitter_twitter_consumer_secret');
delete_site_option('wp_post_to_twitter_twitter_consumer_secret');
delete_option('wp_post_to_twitter_twitter_access_token');
delete_site_option('wp_post_to_twitter_twitter_access_token');
delete_option('wp_post_to_twitter_twitter_access_token_secret');
delete_site_option('wp_post_to_twitter_twitter_access_token_secret');
delete_option('wp_post_to_twitter_twitter_prefix');
delete_site_option('wp_post_to_twitter_twitter_prefix');

