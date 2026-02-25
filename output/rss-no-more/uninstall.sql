-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rss-no-more-on', 'rss-no-more-em', 'rss-no-more-link', 'rss-no-more-footer', 'rss-no-more-hr', 'rss-no-more-style', 'rss-no-more-tracking', 'rss-no-more-utm-source', 'rss-no-more-utm-campaign', 'rss-no-more-utm-medium');

