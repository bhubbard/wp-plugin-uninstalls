-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_sitemap_custom_css', 'easy_sitemap_cache_enabled', 'easy_sitemap_cache_expiry');
DELETE FROM wp_options WHERE option_name LIKE 'easy_sitemap_%';

