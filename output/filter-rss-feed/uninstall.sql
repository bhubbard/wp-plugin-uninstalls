-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filter_rss_feed_settings_add_more_post_types_to_main_query', 'filter_rss_feed_settings_filter_rss_feed', 'filter_rss_feed_settings_what_post_types_to_show_on_main_query');
DELETE FROM wp_options WHERE option_name LIKE '%_by_post_type';
DELETE FROM wp_options WHERE option_name LIKE 'filter_rss_feed_settings_filter_%';

