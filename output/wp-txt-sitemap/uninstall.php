<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kuegy_txtsitemap_last_updated');
delete_site_option('kuegy_txtsitemap_last_updated');
delete_option('kuegy_txtsitemap_include_posts');
delete_site_option('kuegy_txtsitemap_include_posts');
delete_option('kuegy_txtsitemap_include_pages');
delete_site_option('kuegy_txtsitemap_include_pages');
delete_option('kuegy_txtsitemap_include_categories');
delete_site_option('kuegy_txtsitemap_include_categories');
delete_option('kuegy_txtsitemap_ping_google');
delete_site_option('kuegy_txtsitemap_ping_google');
delete_option('kuegy_txtsitemap_ping_bing');
delete_site_option('kuegy_txtsitemap_ping_bing');
delete_option('kuegy_txtsitemap_include_homepage');
delete_site_option('kuegy_txtsitemap_include_homepage');
delete_option('kuegy_txtsitemap_publish');
delete_site_option('kuegy_txtsitemap_publish');
delete_option('kuegy_txtsitemap_save_post');
delete_site_option('kuegy_txtsitemap_save_post');

// Clear Cron Jobs
wp_clear_scheduled_hook('kuegy_txtsitemap_event');

