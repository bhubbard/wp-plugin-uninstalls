<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitterKeywords_options');
delete_site_option('twitterKeywords_options');
delete_option('keywords');
delete_site_option('keywords');
delete_option('username');
delete_site_option('username');
delete_option('tweetN');
delete_site_option('tweetN');
delete_option('widgetText');
delete_site_option('widgetText');
delete_option('lang');
delete_site_option('lang');

