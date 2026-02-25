-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sale_twitter_timeline_username', 'sale_twitter_timeline_items', 'sale_twitter_timeline_title');

