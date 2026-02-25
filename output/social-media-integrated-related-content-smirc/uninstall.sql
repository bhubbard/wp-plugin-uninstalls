-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('required_keyword', 'title_separator', 'exclude_list_google_blogsearch', 'exclude_list_twitter_search', 'header_text', 'header_google_blogsearch', 'header_twitter_search', 'animate_reveal', 'data_source_google_blogsearch', 'num_results_google_blogsearch', 'data_source_twitter_search', 'num_results_twitter_search');
DELETE FROM wp_options WHERE option_name LIKE 'header_%';

