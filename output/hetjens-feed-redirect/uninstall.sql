-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hetjens_feed_redirect_feed_url', 'hetjens_feed_redirect_comments_url');

