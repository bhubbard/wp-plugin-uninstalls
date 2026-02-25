<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speed_mate_caching_enable_cache');
delete_site_option('speed_mate_caching_enable_cache');
delete_option('speed_mate_caching_cache_duration');
delete_site_option('speed_mate_caching_cache_duration');
delete_option('speed_mate_caching_enable_static_caching');
delete_site_option('speed_mate_caching_enable_static_caching');
delete_option('speed_mate_asset_optimization_enable_minification');
delete_site_option('speed_mate_asset_optimization_enable_minification');
delete_option('speed_mate_asset_optimization_enable_html_minification');
delete_site_option('speed_mate_asset_optimization_enable_html_minification');
delete_option('speed_mate_asset_optimization_enable_image_lazy_loading');
delete_site_option('speed_mate_asset_optimization_enable_image_lazy_loading');
delete_option('speed_mate_asset_optimization_exclusions');
delete_site_option('speed_mate_asset_optimization_exclusions');
delete_option('speed_mate_asset_optimization_combine_css');
delete_site_option('speed_mate_asset_optimization_combine_css');
delete_option('speed_mate_db_optimization_revisions_cleanup_enable');
delete_site_option('speed_mate_db_optimization_revisions_cleanup_enable');
delete_option('speed_mate_db_optimization_revisions_cleanup_schedule');
delete_site_option('speed_mate_db_optimization_revisions_cleanup_schedule');
delete_option('speed_mate_db_optimization_revisions_cleanup_keep_count');
delete_site_option('speed_mate_db_optimization_revisions_cleanup_keep_count');
delete_option('speed_mate_db_optimization_trash_spam_cleanup_enable');
delete_site_option('speed_mate_db_optimization_trash_spam_cleanup_enable');
delete_option('speed_mate_db_optimization_trash_spam_cleanup_schedule');
delete_site_option('speed_mate_db_optimization_trash_spam_cleanup_schedule');
delete_option('speed_mate_pa_google_api_key');
delete_site_option('speed_mate_pa_google_api_key');
delete_option('speed_mate_caching_enable_header_caching');
delete_site_option('speed_mate_caching_enable_header_caching');

// Clear Cron Jobs
wp_clear_scheduled_hook('speed_mate_revisions_cleanup_cron');
wp_clear_scheduled_hook('speed_mate_trash_spam_cleanup_cron');

