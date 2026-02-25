<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tweetster_consumer_key');
delete_site_option('tweetster_consumer_key');
delete_option('tweetster_consumer_secret');
delete_site_option('tweetster_consumer_secret');
delete_option('tweetster_user_token');
delete_site_option('tweetster_user_token');
delete_option('tweetster_token_secret');
delete_site_option('tweetster_token_secret');
delete_option('tweetster_bitly_login');
delete_site_option('tweetster_bitly_login');
delete_option('tweetster_bitly_apikey');
delete_site_option('tweetster_bitly_apikey');

