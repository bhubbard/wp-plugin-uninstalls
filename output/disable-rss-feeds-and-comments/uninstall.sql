-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_rss_feeds', 'disable_comments_on_pages', 'disable_comments_on_posts');

