-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rssopt_announce_feed_name', 'rssopt_announce_rss_link', 'rssopt_more_link_text', 'rssopt_full_rss_link');

