<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rssopt_announce_feed_name');
delete_site_option('rssopt_announce_feed_name');
delete_option('rssopt_announce_rss_link');
delete_site_option('rssopt_announce_rss_link');
delete_option('rssopt_more_link_text');
delete_site_option('rssopt_more_link_text');
delete_option('rssopt_full_rss_link');
delete_site_option('rssopt_full_rss_link');

