-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tplp_popular_posts', 'tplp_latest_posts', 'tplp_popular_title', 'tplp_latest_title');

