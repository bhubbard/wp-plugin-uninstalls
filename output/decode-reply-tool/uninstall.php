<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitter-username');
delete_site_option('twitter-username');
delete_option('adn-username');
delete_site_option('adn-username');
delete_option('enable-reply-tool');
delete_site_option('enable-reply-tool');
delete_option('display-above-posts');
delete_site_option('display-above-posts');
delete_option('display-below-posts');
delete_site_option('display-below-posts');

