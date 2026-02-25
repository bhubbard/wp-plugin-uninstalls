-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('juicer_social_feed_exists', 'juicer_social_feed_review_permanently_dismissed', 'juicer_social_feed_review_dismissed');

