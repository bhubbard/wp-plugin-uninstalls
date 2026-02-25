<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dddPostViews_post_views_settings');
delete_site_option('dddPostViews_post_views_settings');
delete_option('dddPostViews_post_views_version');
delete_site_option('dddPostViews_post_views_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('dddPostViews_monthly_aggregation_event');

