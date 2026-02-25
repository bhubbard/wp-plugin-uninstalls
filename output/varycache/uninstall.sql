-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('varycache_version', 'varycache_write_error', 'varycache_preload_lock', 'varycache_cache_report');

