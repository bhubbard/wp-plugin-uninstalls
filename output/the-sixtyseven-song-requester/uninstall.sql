-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss_song_requester_settings', 'ss_song_requester_admin_notices');

