-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fetch_meditation_timezone', 'fetch_meditation_excerpt', 'fetch_meditation_read_more_url', 'fetch_meditation_jft_language', 'fetch_meditation_spad_language', 'fetch_meditation_book', 'fetch_meditation_layout', 'fetch_meditation_theme', 'fetch_meditation_tabs_layout');
DELETE FROM wp_options WHERE option_name LIKE '%_language';
DELETE FROM wp_options WHERE option_name LIKE 'fetch_meditation_%';

