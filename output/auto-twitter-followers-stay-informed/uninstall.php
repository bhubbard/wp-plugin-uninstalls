<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_twitter_consumerKey');
delete_site_option('auto_twitter_consumerKey');
delete_option('auto_twitter_consumerSecret');
delete_site_option('auto_twitter_consumerSecret');
delete_option('auto_twitter_accesToken');
delete_site_option('auto_twitter_accesToken');
delete_option('auto_twitter_accesTokenSecret');
delete_site_option('auto_twitter_accesTokenSecret');
delete_option('auto_twitter_bitly_username');
delete_site_option('auto_twitter_bitly_username');
delete_option('auto_twitter_bitly_api_key');
delete_site_option('auto_twitter_bitly_api_key');

