-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('warcraft_news_rewrite_items', 'warcraft_news_global_cache_time', 'warcraft_news_wowhead', 'global_cache_time');
DELETE FROM wp_options WHERE option_name LIKE 'warcraft_news_%';

