-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hundred_words_news_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hundred_words_news_thunderbolt_news', '_hundred_words_news_post_summary');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hundred_words_news_thunderbolt_news', '_hundred_words_news_post_summary');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hundred_words_news_thunderbolt_news', '_hundred_words_news_post_summary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hundred_words_news_thunderbolt_news', '_hundred_words_news_post_summary');

