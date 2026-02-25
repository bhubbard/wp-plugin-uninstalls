-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('minicache_enabled', 'minicache_ttl', 'minicache_store_gzip', 'minicache_device_bucket', 'minicache_min_bytes', 'minicache_ignore_query_keys', 'minicache_allow_query_keys', 'minicache_lang_cookie_keys', 'minicache_bypass_cookie_prefixes');

