-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flash_cache_advanced_settings', 'flash_cache_settings', 'flash_cache_disk_usage', 'flash_cache_preload_current_post', 'flash_cache_preload_now', 'flash_cache_preload_cron', 'flash_cache_preload', 'flash_cache_version', 'flash_cache_updated_3_2', 'flash_cache_updated_3_3');

