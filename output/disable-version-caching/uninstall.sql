-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_version_caching_options', 'disable_version_caching_clear_cache_time');

