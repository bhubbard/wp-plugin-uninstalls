-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcbfeed_rss_export_image', 'wcbfeed_rss_export_price', 'wcbfeed_rss_image_size');

