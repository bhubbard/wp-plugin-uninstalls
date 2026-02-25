-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yce_feed_format', 'yce_feed_title', 'yce_feed_h', 'yce_feed_w', 'yce_feed_plugin');

