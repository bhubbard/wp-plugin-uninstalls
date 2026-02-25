<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('supersearch_public_key');
delete_site_option('supersearch_public_key');
delete_option('supersearch_mobile_top_offset');
delete_site_option('supersearch_mobile_top_offset');
delete_option('supersearch_desktop_top_offset');
delete_site_option('supersearch_desktop_top_offset');
delete_option('supersearch_private_key');
delete_site_option('supersearch_private_key');
delete_option('supersearch_changed_posts');
delete_site_option('supersearch_changed_posts');

// Clear Cron Jobs
wp_clear_scheduled_hook('supersearch_daily_index_update');

