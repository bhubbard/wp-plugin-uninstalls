<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfs_options');
delete_site_option('sfs_options');
delete_option('sfs_alert');
delete_site_option('sfs_alert');
delete_option('sfs_version');
delete_site_option('sfs_version');

// Delete Transients
delete_transient('feed_count');
delete_site_transient('feed_count');
delete_transient('rss2_count');
delete_site_transient('rss2_count');
delete_transient('comment_count');
delete_site_transient('comment_count');
delete_transient('all_count');
delete_site_transient('all_count');
delete_transient('comments_count');
delete_site_transient('comments_count');
delete_transient('_transient_all_count');
delete_site_transient('_transient_all_count');
delete_transient('_transient_feed_count');
delete_site_transient('_transient_feed_count');
delete_transient('_transient_rss2_count');
delete_site_transient('_transient_rss2_count');
delete_transient('_transient_comments_count');
delete_site_transient('_transient_comments_count');
delete_transient('_transient_timeout_all_count');
delete_site_transient('_transient_timeout_all_count');
delete_transient('_transient_timeout_feed_count');
delete_site_transient('_transient_timeout_feed_count');
delete_transient('_transient_timeout_rss2_count');
delete_site_transient('_transient_timeout_rss2_count');
delete_transient('_transient_timeout_comment_count');
delete_site_transient('_transient_timeout_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('sfs_create_transients');

