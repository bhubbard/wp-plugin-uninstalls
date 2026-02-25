-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('youtube_channel_defaults', 'youtube_channel_version', 'youtube_channel_db_ver', 'youtube_channel_dismissed_notices');

