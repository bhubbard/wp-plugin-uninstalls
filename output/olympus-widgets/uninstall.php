<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('author_widget_disable');
delete_site_option('author_widget_disable');
delete_option('olympus_twitter_consumer_key');
delete_site_option('olympus_twitter_consumer_key');
delete_option('olympus_twitter_consumer_secret');
delete_site_option('olympus_twitter_consumer_secret');
delete_option('olympus_twitter_access_token');
delete_site_option('olympus_twitter_access_token');
delete_option('olympus_twitter_access_token_secret');
delete_site_option('olympus_twitter_access_token_secret');
delete_option('olympus_twitter_plugin_last_cache_time');
delete_site_option('olympus_twitter_plugin_last_cache_time');
delete_option('olympus_twitter_plugin_tweets');
delete_site_option('olympus_twitter_plugin_tweets');

