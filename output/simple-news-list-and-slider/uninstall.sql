-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nwowls_news_limit', 'nwowls_news_auto_play', 'nwowls_news_nav', 'nwowls_news_pagination', 'nwowls_news_loop', 'nwowls_news_autoplay_time', 'nwowls_news_hover_pause', 'nwowls_news_loop_length', 'nwowls_news_show_category', 'nwowls_news_show_date', 'nwowls_news_show_dots', 'nwowls_news_title_word_limit', 'nwowls_news_content_word_limit', 'nwowls_news_show_full_content', 'nwowls_news_order', 'nwowls_news_read_more_text', 'nwowls_news_grid');

