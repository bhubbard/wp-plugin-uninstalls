-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsc_settings', 'wpscac_settings', 'wpsc_debug_mode', 'wpsc_settings_backups', 'wpsc_last_cache_clear', 'wpsc_html_cache_hits', 'wpsc_html_cache_misses', 'wpsc_previous_redis_stats', 'wpsc_preload_progress');

