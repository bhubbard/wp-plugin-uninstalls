-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loq_latest_Feeds_limit', 'loq_latest_Feeds_title', 'loq_latest_Feeds_feeds_link', 'loq_latest_Feeds_title_link', 'loq_latest_Feeds_top_content', 'loq_latest_Feeds_bottom_content');

