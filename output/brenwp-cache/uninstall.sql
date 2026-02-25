-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brenwpcache_debug_log', 'brenwpcache_hmac_key', 'brenwpcache_cache_size');
DELETE FROM wp_options WHERE option_name LIKE 'brenwpcache_notice_%';

