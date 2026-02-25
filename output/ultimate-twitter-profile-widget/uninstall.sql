-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('utwp_widget_title', 'utwp_username', 'utwp_height', 'utwp_width', 'utwp_scrollbar', 'utwp_shell_bg', 'utwp_shell_text', 'utwp_tweet_bg', 'utwp_tweet_text', 'utwp_links', 'utwp_behavior', 'utwp_credits', 'utwp_show_sponser_link', 'utwp_allow_tweet_button', 'utwp_tweet_button_display_page', 'utwp_tweet_button_display_home', 'utwp_tweet_button_display_rss', 'utwp_tweet_button_place', 'utwp_tweet_button_style', 'utwp_tweet_button_container', 'utwp_tweet_button_twitter_username', 'utwp_tweet_button_reco_username', 'utwp_tweet_button_reco_desc', 'utwp_widget_search_query', 'utwp_widget_search_title', 'utwp_widget_search_caption', 'utwp_search_widget_sidebar_title', 'utwp_search_height', 'utwp_search_width', 'utwp_search_scrollbar', 'utwp_search_shell_bg', 'utwp_search_shell_text', 'utwp_search_tweet_bg', 'utwp_search_tweet_text', 'utwp_search_links');

