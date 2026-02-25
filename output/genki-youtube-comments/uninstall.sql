-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('genki_youtube_schedule', 'genki_youtube_skipspam', 'genki_commentlog');

