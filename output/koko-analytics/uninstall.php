<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('koko_analytics_settings');
delete_site_option('koko_analytics_settings');
delete_option('koko_analytics_referrers_v2');
delete_site_option('koko_analytics_referrers_v2');
delete_option('koko_analytics_version');
delete_site_option('koko_analytics_version');
delete_option('koko_analytics_realtime_pageview_count');
delete_site_option('koko_analytics_realtime_pageview_count');
delete_option('koko_analytics_last_aggregation_at');
delete_site_option('koko_analytics_last_aggregation_at');
delete_option('koko_analytics_use_custom_endpoint');
delete_site_option('koko_analytics_use_custom_endpoint');
delete_option('koko_analytics_jetpack_import_params');
delete_site_option('koko_analytics_jetpack_import_params');
delete_option('koko_analytics_pro_version');
delete_site_option('koko_analytics_pro_version');

// Delete Transients
delete_transient('koko_analytics_remote_posts');
delete_site_transient('koko_analytics_remote_posts');

// Clear Cron Jobs
wp_clear_scheduled_hook('koko_analytics_aggregate_stats');
wp_clear_scheduled_hook('koko_analytics_prune_data');
wp_clear_scheduled_hook('koko_analytics_rotate_fingerprint_seed');
wp_clear_scheduled_hook('koko_analytics_test_custom_endpoint');

