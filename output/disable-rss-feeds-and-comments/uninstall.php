<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_rss_feeds');
delete_site_option('disable_rss_feeds');
delete_option('disable_comments_on_pages');
delete_site_option('disable_comments_on_pages');
delete_option('disable_comments_on_posts');
delete_site_option('disable_comments_on_posts');

