-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rssslider_height_display_length_s1', 'rss_s1', 'rssslider_height_display_length_s2', 'rss_s2', 'rssslider_height_display_length_s3', 'rss_s3', 'rssslider_height_display_length_s4', 'rss_s4');

