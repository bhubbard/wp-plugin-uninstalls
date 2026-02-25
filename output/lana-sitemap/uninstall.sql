-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lana_sitemap_sitemaps', 'rewrite_rules', 'lana_sitemap_robots', 'lana_sitemap_news_tags', 'lana_sitemap_post_types', 'lana_sitemap_taxonomies', 'lana_sitemap_domains', 'lana_sitemap_urls', 'lana_sitemap_custom_sitemaps', 'lana_sitemap_ping', 'lana_sitemap_version', 'lana_sitemap_news_sitemap', 'lana_sitemap_flush_rewrite_rules', 'lana_sitemap_create_genres', 'lana_sitemap_clear_settings');
DELETE FROM wp_options WHERE option_name LIKE 'lana_sitemap_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lana_sitemap_exclude', '_lana_sitemap_priority', '_lana_sitemap_news_exclude', '_lana_sitemap_news_access');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lana_sitemap_exclude', '_lana_sitemap_priority', '_lana_sitemap_news_exclude', '_lana_sitemap_news_access');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lana_sitemap_exclude', '_lana_sitemap_priority', '_lana_sitemap_news_exclude', '_lana_sitemap_news_access');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lana_sitemap_exclude', '_lana_sitemap_priority', '_lana_sitemap_news_exclude', '_lana_sitemap_news_access');

