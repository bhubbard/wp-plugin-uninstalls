-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfs_options', 'sfs_alert', 'sfs_version', 'feed_count', 'rss2_count', 'comment_count', 'all_count', 'comments_count', '_transient_all_count', '_transient_feed_count', '_transient_rss2_count', '_transient_comments_count', '_transient_timeout_all_count', '_transient_timeout_feed_count', '_transient_timeout_rss2_count', '_transient_timeout_comment_count');

