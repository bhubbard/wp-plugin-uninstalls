-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rss_scr_width', 'rss_scr_height', 'rss_scr_delay', 'rss_scr_speed', 'rss_scr_num', 'rss_scr_url', 'rss_scr_url2', 'rss_scr_url3', 'rss_scr_title');

