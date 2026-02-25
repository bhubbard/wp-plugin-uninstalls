-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('developer_sitemap_options', 'developer_sitemap_cache_index', 'developer_sitemap_cache_post', 'developer_sitemap_cache_page', 'developer_sitemap_cache_product', 'developer_sitemap_cache_taxonomy', 'developer_sitemap_cache_author');

