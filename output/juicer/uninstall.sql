-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('juicer_feed_exists', 'juicer_review_permanently_dismissed', 'juicer_review_dismissed');

