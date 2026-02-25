-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sr42_podcast_url', 'sr42_round_url', 'sr42_radio_title', 'sr42_background_url', 'sr42_play_url', 'sr42_pause_url');

