<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('facebook_twitter_feeds_options');
delete_site_option('facebook_twitter_feeds_options');

