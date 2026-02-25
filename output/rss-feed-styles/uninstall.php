<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rss_feed_styles_enabled_readers');
delete_site_option('rss_feed_styles_enabled_readers');
delete_option('rss_feed_styles_enabled_buttons');
delete_site_option('rss_feed_styles_enabled_buttons');
delete_option('rss_feed_styles_credit_disabled');
delete_site_option('rss_feed_styles_credit_disabled');
delete_option('rss_feed_styles_full_html');
delete_site_option('rss_feed_styles_full_html');
delete_option('rss_feed_styles_secret_id');
delete_site_option('rss_feed_styles_secret_id');
delete_option('rss_feed_styles_upsell_url');
delete_site_option('rss_feed_styles_upsell_url');
delete_option('rss_feed_styles_last_fetch_upsell');
delete_site_option('rss_feed_styles_last_fetch_upsell');

