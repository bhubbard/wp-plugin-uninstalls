-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ossdl_off_blog_url', 'ossdl_off_cdn_url', 'ossdl_off_include_dirs', 'ossdl_off_exclude', 'ossdl_cname', 'ossdl_https', 'wp_super_cache_index_detected', 'wp_super_cache_disabled', 'super_cache_meta', 'wpsupercache_count', 'supercache_last_cached', 'wpsc_feed_list', 'wpsupercache_gc_time', 'wpsupercache_start', 'supercache_stats', 'preload_cache_counter', 'wpsc_boost_cache_notice_displayed', 'jb_cache_moved_to_boost', 'wpsc_config_error');

