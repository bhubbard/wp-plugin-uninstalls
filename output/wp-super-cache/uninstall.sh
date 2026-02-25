#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ossdl_off_blog_url'
wp option delete 'ossdl_off_cdn_url'
wp option delete 'ossdl_off_include_dirs'
wp option delete 'ossdl_off_exclude'
wp option delete 'ossdl_cname'
wp option delete 'ossdl_https'
wp option delete 'wp_super_cache_index_detected'
wp option delete 'wp_super_cache_disabled'
wp option delete 'super_cache_meta'
wp option delete 'wpsupercache_count'
wp option delete 'supercache_last_cached'
wp option delete 'wpsc_feed_list'
wp option delete 'wpsupercache_gc_time'
wp option delete 'wpsupercache_start'
wp option delete 'supercache_stats'
wp option delete 'preload_cache_counter'

# Delete Transients
wp transient delete 'wpsc_boost_cache_notice_displayed'
wp transient delete 'jb_cache_moved_to_boost'
wp transient delete 'wpsc_config_error'

# Clear Cron Jobs
wp cron event delete 'wp_cache_gc'
wp cron event delete 'wp_cache_preload_hook'
wp cron event delete 'wp_cache_full_preload_hook'
wp cron event delete 'wp_cache_check_site_hook'
wp cron event delete 'wp_cache_gc_watcher'
wp cron event delete 'wp_cache_add_site_cache_index'

