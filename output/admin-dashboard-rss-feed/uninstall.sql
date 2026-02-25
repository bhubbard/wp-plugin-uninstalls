-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsx_rss_feed_image_attachment_id', 'wsx_logo_title', 'wsx_logo_target_link', 'wsx_rss_feed_url', 'wsx_rss_feed_count', 'wsx-rss-feed-admin-notice');

