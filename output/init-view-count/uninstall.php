<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('init_plugin_suite_view_count_enable_widget');
delete_site_option('init_plugin_suite_view_count_enable_widget');
delete_option('init_plugin_suite_view_count_post_types');
delete_site_option('init_plugin_suite_view_count_post_types');
delete_option('init_plugin_suite_view_count_auto_insert');
delete_site_option('init_plugin_suite_view_count_auto_insert');
delete_option('init_plugin_suite_view_count_enable_day');
delete_site_option('init_plugin_suite_view_count_enable_day');
delete_option('init_plugin_suite_view_count_enable_week');
delete_site_option('init_plugin_suite_view_count_enable_week');
delete_option('init_plugin_suite_view_count_enable_month');
delete_site_option('init_plugin_suite_view_count_enable_month');
delete_option('init_plugin_suite_view_count_disable_trending');
delete_site_option('init_plugin_suite_view_count_disable_trending');
delete_option('init_plugin_suite_view_count_batch');
delete_site_option('init_plugin_suite_view_count_batch');
delete_option('init_plugin_suite_view_count_strict_ip_check');
delete_site_option('init_plugin_suite_view_count_strict_ip_check');
delete_option('init_plugin_suite_view_count_delay');
delete_site_option('init_plugin_suite_view_count_delay');
delete_option('init_plugin_suite_view_count_scroll_percent');
delete_site_option('init_plugin_suite_view_count_scroll_percent');
delete_option('init_plugin_suite_view_count_scroll_enabled');
delete_site_option('init_plugin_suite_view_count_scroll_enabled');
delete_option('init_plugin_suite_view_count_storage');
delete_site_option('init_plugin_suite_view_count_storage');
delete_option('init_plugin_suite_view_count_disable_style');
delete_site_option('init_plugin_suite_view_count_disable_style');

// Delete Transients
delete_transient('init_plugin_suite_view_count_trending');
delete_site_transient('init_plugin_suite_view_count_trending');
delete_transient('trending_last_calculation');
delete_site_transient('trending_last_calculation');
delete_transient('init_plugin_suite_view_count_trending_debug');
delete_site_transient('init_plugin_suite_view_count_trending_debug');
delete_transient('hot_topics_24h');
delete_site_transient('hot_topics_24h');
delete_transient('init_plugin_suite_view_count_site_traffic_shape');
delete_site_transient('init_plugin_suite_view_count_site_traffic_shape');
delete_transient('init_plugin_suite_view_count_site_traffic_shape_learned');
delete_site_transient('init_plugin_suite_view_count_site_traffic_shape_learned');

// Clear Cron Jobs
wp_clear_scheduled_hook('init_plugin_suite_view_count_reset_counts');
wp_clear_scheduled_hook('init_plugin_suite_view_count_cron_update_trending');

