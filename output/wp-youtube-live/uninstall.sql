-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('youtube_live_settings', 'wp-youtube-live-1714-notice-dismissed', 'youtube_live_version', 'wp-youtube-live-api-response', 'youtube-live-upcoming-videos');

