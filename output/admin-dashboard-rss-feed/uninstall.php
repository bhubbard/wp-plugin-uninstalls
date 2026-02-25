<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsx_rss_feed_image_attachment_id');
delete_site_option('wsx_rss_feed_image_attachment_id');
delete_option('wsx_logo_title');
delete_site_option('wsx_logo_title');
delete_option('wsx_logo_target_link');
delete_site_option('wsx_logo_target_link');
delete_option('wsx_rss_feed_url');
delete_site_option('wsx_rss_feed_url');
delete_option('wsx_rss_feed_count');
delete_site_option('wsx_rss_feed_count');

// Delete Transients
delete_transient('wsx-rss-feed-admin-notice');
delete_site_transient('wsx-rss-feed-admin-notice');

