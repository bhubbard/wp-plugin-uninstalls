<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wtfeeds_consumer_screen_name');
delete_site_option('wtfeeds_consumer_screen_name');
delete_option('wtfeeds_consumer_key');
delete_site_option('wtfeeds_consumer_key');
delete_option('wtfeeds_consumer_secret');
delete_site_option('wtfeeds_consumer_secret');
delete_option('wtfeeds_access_token');
delete_site_option('wtfeeds_access_token');
delete_option('wtfeeds_access_token_secret');
delete_site_option('wtfeeds_access_token_secret');
delete_option('wtfeeds_display_number_of_tweets');
delete_site_option('wtfeeds_display_number_of_tweets');
delete_option('wtfeeds_display_color');
delete_site_option('wtfeeds_display_color');

