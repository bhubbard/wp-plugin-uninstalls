<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feedtune_enabled_feeds');
delete_site_option('feedtune_enabled_feeds');
delete_option('feedtune_feed_redirect');
delete_site_option('feedtune_feed_redirect');
delete_option('feedtune_redirect_http_code');
delete_site_option('feedtune_redirect_http_code');

