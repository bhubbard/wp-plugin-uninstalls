-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ainewsposter_last_tab_index', 'ainewsposter_news_query', 'ainewsposter_article_prompt', 'ainewsposter_article_author', 'ainewsposter_news_count', 'ainewsposter_article_categories', 'ainewsposter_article_tags', 'ainewsposter_bing_api_key', 'ainewsposter_pagepixels_api_key', 'ainewsposter_openai_api_key', 'ainewsposter_auto_publish', 'ainewsposter_news_language', 'ainewsposter_news_sortby', 'ainewsposter_news_freshness', 'ainewsposter_news_mkt', 'ainewsposter_openai_model', 'ainewsposter-redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('original_news_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('original_news_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('original_news_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('original_news_url');

