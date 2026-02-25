-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quran_playlist_form', 'show_quran_playlist_rss', 'show_playlist_pdf', 'show_playlist_podcast', 'show_playlist_txt', 'show_playlist_MediaPlayer', 'show_playlist_QuickTime', 'show_playlist_realplayer', 'show_playlist_Winamp', 'show_playlist_tunein', 'playlist_title', 'quran_playlist_id');

