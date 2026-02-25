<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crfs_facebook_url');
delete_site_option('crfs_facebook_url');
delete_option('crfs_instagram_url');
delete_site_option('crfs_instagram_url');
delete_option('crfs_twitter_url');
delete_site_option('crfs_twitter_url');
delete_option('crfs_linkedin_url');
delete_site_option('crfs_linkedin_url');
delete_option('crfs_youtube_url');
delete_site_option('crfs_youtube_url');
delete_option('crfs_rss_url');
delete_site_option('crfs_rss_url');
delete_option('crfs_pinterest_url');
delete_site_option('crfs_pinterest_url');
delete_option('crfs_behance_url');
delete_site_option('crfs_behance_url');
delete_option('crfs_github_url');
delete_site_option('crfs_github_url');
delete_option('crfs_reddit_url');
delete_site_option('crfs_reddit_url');
delete_option('crfs_stackoverflow_url');
delete_site_option('crfs_stackoverflow_url');
delete_option('crfs_tumblr_url');
delete_site_option('crfs_tumblr_url');
delete_option('crfs_vine_url');
delete_site_option('crfs_vine_url');
delete_option('crfs_primary_color');
delete_site_option('crfs_primary_color');
delete_option('crfs_secondary_color');
delete_site_option('crfs_secondary_color');
delete_option('crfs_position');
delete_site_option('crfs_position');

