-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ART_plugin_installed', 'ART_plugin_version', 'article_reading_time_location', 'article_reading_time_title', 'article_reading_time_word_count', 'article_reading_time_character_count', 'article_reading_time_read_time');

