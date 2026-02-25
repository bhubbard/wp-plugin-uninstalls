<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_rss_feeds');
delete_site_option('wp_rss_feeds');
delete_option('wp_rss_fetcher_imported');
delete_site_option('wp_rss_fetcher_imported');

