-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rss_language', 'oni_daiko_title', 'oni_daiko_limit', 'oni_daiko_contents', 'oni_daiko_text_limit');

