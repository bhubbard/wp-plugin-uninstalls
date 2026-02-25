-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('purge_cache_for_cloudflare_api_key', 'purge_cache_for_cloudflare_api_email_address', 'purge_cache_for_cloudflare_urls', 'purge_cache_for_cloudflare_zone_data');

