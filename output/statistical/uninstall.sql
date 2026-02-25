-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('no_of_days_since_first_post', 'total_no_of_words_in_blog', 'total_no_posts_since_start', 'avg_words_published_per_day');

