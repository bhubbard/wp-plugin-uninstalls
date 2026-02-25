-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE '%stats';
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('song_title', 'event_id', 'song_length', 'ms_playlists', 'ms_playlist_pdf_url', 'artist_name', 'song_year', 'song_genre', 'sample_playlist', 'song_month');
DELETE FROM wp_usermeta WHERE meta_key IN ('song_title', 'event_id', 'song_length', 'ms_playlists', 'ms_playlist_pdf_url', 'artist_name', 'song_year', 'song_genre', 'sample_playlist', 'song_month');
DELETE FROM wp_termmeta WHERE meta_key IN ('song_title', 'event_id', 'song_length', 'ms_playlists', 'ms_playlist_pdf_url', 'artist_name', 'song_year', 'song_genre', 'sample_playlist', 'song_month');
DELETE FROM wp_commentmeta WHERE meta_key IN ('song_title', 'event_id', 'song_length', 'ms_playlists', 'ms_playlist_pdf_url', 'artist_name', 'song_year', 'song_genre', 'sample_playlist', 'song_month');

