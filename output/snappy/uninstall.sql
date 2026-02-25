-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snappy_cache_hits', 'snappy_cache_misses', 'snappy_settings');

