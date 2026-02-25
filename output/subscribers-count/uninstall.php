<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('subscribers_count');
delete_site_option('subscribers_count');
delete_option('Subscribers_count');
delete_site_option('Subscribers_count');

// Delete Transients
delete_transient('gplus_count');
delete_site_transient('gplus_count');
delete_transient('fb5_count');
delete_site_transient('fb5_count');
delete_transient('twitter_count');
delete_site_transient('twitter_count');
delete_transient('rss_count');
delete_site_transient('rss_count');

