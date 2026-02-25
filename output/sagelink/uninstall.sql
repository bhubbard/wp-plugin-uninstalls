-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sage82in_enable_posts', 'sage82in_enable_pages', 'sage82in_enable_comments', 'sage82in_link_targets', 'sage82in_ignore_words', 'sage82in_max_links', 'sage82in_max_single', 'sage82in_custom_keywords', 'sage82in_nofollow', 'sage82in_target_blank', 'sage82in_prevent_self_link', 'sage82in_custom_post_types', 'sage82in_blacklist_posts', 'sage82in_blacklist_categories', 'sage82in_synonyms', 'sage82in_link_preference', 'sage82in_date_range_days', 'sage82in_keywords_cache');

