-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fyp_news_ticker_items', 'fyp-news-ticker|settings|speed', 'fyp-news-ticker|settings|direction', 'fyp-news-ticker|settings|pause_on_hover', 'fyp-news-ticker|settings|show_icons', 'fyp-news-ticker|settings|template', 'fyp-news-ticker|design|bg_color', 'fyp-news-ticker|design|text_color', 'fyp-news-ticker|design|link_color', 'fyp-news-ticker|design|icon_color', 'fyp-news-ticker|design|height', 'fyp-news-ticker|design|font_size');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_news_items', '_feed_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_news_items', '_feed_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_news_items', '_feed_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_news_items', '_feed_settings');

