-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_rest_cache_timeout', 'wp_rest_cache_timeout_interval', 'wp_rest_cache_regenerate', 'wp_rest_cache_regenerate_interval', 'wp_rest_cache_regenerate_number', 'wp_rest_cache_memcache_used', 'wp_rest_cache_global_cacheable_request_headers', 'wp_rest_cache_admin_notices', 'wp_rest_cache_rest_prefix', 'wp_rest_cache_uncached_parameters', 'wp_rest_cache_cacheable_request_headers', 'wp_rest_cache_allowed_request_methods', 'wp_rest_cache_allowed_endpoints', 'wp_rest_cache_disallowed_endpoints', 'wp_rest_cache_item_allowed_endpoints', 'wp_rest_cache_hit_recording', 'wp_rest_cache_database_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_rest_cache_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_rest_cache_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_rest_cache_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_rest_cache_dismissed_notices');

