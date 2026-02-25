<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitter_user_name');
delete_site_option('twitter_user_name');
delete_option('num_tweets_retrieve');
delete_site_option('num_tweets_retrieve');

