-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrz_social_links', 'mrz_social_counters', 'mrz_social_twitter_token', 'mrz_social_facebook_count', 'mrz_social_facebook_page_id', 'mrz_social_gplus_count', 'mrz_social_gplus_page_url', 'mrz_social_twitter_count', 'mrz_social_twitter_screen_name');

