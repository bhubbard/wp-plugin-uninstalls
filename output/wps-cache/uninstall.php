<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsc_settings');
delete_site_option('wpsc_settings');
delete_option('wpscac_settings');
delete_site_option('wpscac_settings');
delete_option('wpsc_debug_mode');
delete_site_option('wpsc_debug_mode');
delete_option('wpsc_settings_backups');
delete_site_option('wpsc_settings_backups');

// Delete Transients
delete_transient('wpsc_last_cache_clear');
delete_site_transient('wpsc_last_cache_clear');
delete_transient('wpsc_html_cache_hits');
delete_site_transient('wpsc_html_cache_hits');
delete_transient('wpsc_html_cache_misses');
delete_site_transient('wpsc_html_cache_misses');
delete_transient('wpsc_previous_redis_stats');
delete_site_transient('wpsc_previous_redis_stats');
delete_transient('wpsc_preload_progress');
delete_site_transient('wpsc_preload_progress');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpsc_collect_metrics');
wp_clear_scheduled_hook('wpsc_cache_maintenance');

