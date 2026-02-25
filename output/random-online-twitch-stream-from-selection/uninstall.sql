-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitch-stream-options', 'twitch-wall-notice-dismissed');

