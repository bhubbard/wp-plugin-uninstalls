-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lyte_emptycache', 'lyte_show_links', 'lyte_size', 'lyte_hidef', 'lyte_position', 'lyte_microdata', 'lyte_greedy', 'lyte_yt_api_key', 'lyte_local_thumb', 'lyte_disclaimer', 'lyte_api_error', 'lyte_version', 'lyte_cache_index', 'lyte_widget_cache', 'wp-youtube-lyte_banner');

