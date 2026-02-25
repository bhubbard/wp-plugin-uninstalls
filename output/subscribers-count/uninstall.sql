-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('subscribers_count', 'Subscribers_count', 'gplus_count', 'fb5_count', 'twitter_count', 'rss_count');

