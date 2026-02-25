<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ggpush_options');
delete_site_option('ggpush_options');

// Delete Transients
delete_transient('ggpush_publish_post_id');
delete_site_transient('ggpush_publish_post_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('ggpush_run_baidu_cron');
wp_clear_scheduled_hook('ggpush_run_baidu_fast_cron');
wp_clear_scheduled_hook('ggpush_run_bing_cron');
wp_clear_scheduled_hook('ggpush_run_indexnow_cron');

