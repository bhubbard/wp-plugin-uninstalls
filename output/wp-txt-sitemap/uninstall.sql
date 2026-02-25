-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kuegy_txtsitemap_last_updated', 'kuegy_txtsitemap_include_posts', 'kuegy_txtsitemap_include_pages', 'kuegy_txtsitemap_include_categories', 'kuegy_txtsitemap_ping_google', 'kuegy_txtsitemap_ping_bing', 'kuegy_txtsitemap_include_homepage', 'kuegy_txtsitemap_publish', 'kuegy_txtsitemap_save_post');

