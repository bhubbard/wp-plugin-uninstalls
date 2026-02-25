<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rfnb_favicons');
delete_site_option('rfnb_favicons');
delete_option('wp_rss_cache');
delete_site_option('wp_rss_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('rfnb_cron');

