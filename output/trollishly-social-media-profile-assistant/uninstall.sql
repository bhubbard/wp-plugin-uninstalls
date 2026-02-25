-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsmpa_tiktok_url', 'tsmpa_instagram_url', 'tsmpa_youtube_url');

