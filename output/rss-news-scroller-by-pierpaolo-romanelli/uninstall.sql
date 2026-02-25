-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('npr_news_items', 'npr_rss_url', 'npr_speed', 'npr_pause', 'npr_direction', 'npr_autoplay', 'npr_opacity', 'npr_full3D', 'npr_title', 'npr_rss_title');

