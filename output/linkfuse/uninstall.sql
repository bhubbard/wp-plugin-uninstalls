-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkfuse_api_url', 'linkfuse_cache_ttl');

