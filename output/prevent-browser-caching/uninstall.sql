-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prevent_browser_caching_options', 'prevent_browser_caching_clear_cache_time');

