-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpk_options_settings', 'tpk_visited_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tpk_og_ed', 'tpk_og_title', 'tpk_og_desc', 'tpk_og_url', 'tpk_og_type', 'tpk_og_custom_meta', 'tpk_og_image', 'tpk_ts_ed', 'tpk_twitter_summary_title', 'tpk_twitter_summary_desc', 'tpk_twitter_summary_username', 'tpk_twitter_summary_type', 'tpk_twitter_summary_custom_meta', 'tpk_twitter_summary_image', 'post_views_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('tpk_og_ed', 'tpk_og_title', 'tpk_og_desc', 'tpk_og_url', 'tpk_og_type', 'tpk_og_custom_meta', 'tpk_og_image', 'tpk_ts_ed', 'tpk_twitter_summary_title', 'tpk_twitter_summary_desc', 'tpk_twitter_summary_username', 'tpk_twitter_summary_type', 'tpk_twitter_summary_custom_meta', 'tpk_twitter_summary_image', 'post_views_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('tpk_og_ed', 'tpk_og_title', 'tpk_og_desc', 'tpk_og_url', 'tpk_og_type', 'tpk_og_custom_meta', 'tpk_og_image', 'tpk_ts_ed', 'tpk_twitter_summary_title', 'tpk_twitter_summary_desc', 'tpk_twitter_summary_username', 'tpk_twitter_summary_type', 'tpk_twitter_summary_custom_meta', 'tpk_twitter_summary_image', 'post_views_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tpk_og_ed', 'tpk_og_title', 'tpk_og_desc', 'tpk_og_url', 'tpk_og_type', 'tpk_og_custom_meta', 'tpk_og_image', 'tpk_ts_ed', 'tpk_twitter_summary_title', 'tpk_twitter_summary_desc', 'tpk_twitter_summary_username', 'tpk_twitter_summary_type', 'tpk_twitter_summary_custom_meta', 'tpk_twitter_summary_image', 'post_views_count');

