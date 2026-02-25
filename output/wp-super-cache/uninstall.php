<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ossdl_off_blog_url');
delete_site_option('ossdl_off_blog_url');
delete_option('ossdl_off_cdn_url');
delete_site_option('ossdl_off_cdn_url');
delete_option('ossdl_off_include_dirs');
delete_site_option('ossdl_off_include_dirs');
delete_option('ossdl_off_exclude');
delete_site_option('ossdl_off_exclude');
delete_option('ossdl_cname');
delete_site_option('ossdl_cname');
delete_option('ossdl_https');
delete_site_option('ossdl_https');
delete_option('wp_super_cache_index_detected');
delete_site_option('wp_super_cache_index_detected');
delete_option('wp_super_cache_disabled');
delete_site_option('wp_super_cache_disabled');
delete_option('super_cache_meta');
delete_site_option('super_cache_meta');
delete_option('wpsupercache_count');
delete_site_option('wpsupercache_count');
delete_option('supercache_last_cached');
delete_site_option('supercache_last_cached');
delete_option('wpsc_feed_list');
delete_site_option('wpsc_feed_list');
delete_option('wpsupercache_gc_time');
delete_site_option('wpsupercache_gc_time');
delete_option('wpsupercache_start');
delete_site_option('wpsupercache_start');
delete_option('supercache_stats');
delete_site_option('supercache_stats');
delete_option('preload_cache_counter');
delete_site_option('preload_cache_counter');

// Delete Transients
delete_transient('wpsc_boost_cache_notice_displayed');
delete_site_transient('wpsc_boost_cache_notice_displayed');
delete_transient('jb_cache_moved_to_boost');
delete_site_transient('jb_cache_moved_to_boost');
delete_transient('wpsc_config_error');
delete_site_transient('wpsc_config_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_cache_gc');
wp_clear_scheduled_hook('wp_cache_preload_hook');
wp_clear_scheduled_hook('wp_cache_full_preload_hook');
wp_clear_scheduled_hook('wp_cache_check_site_hook');
wp_clear_scheduled_hook('wp_cache_gc_watcher');
wp_clear_scheduled_hook('wp_cache_add_site_cache_index');

