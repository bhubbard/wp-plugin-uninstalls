-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('merlic_playlist_player_title', 'mp3_playlist_version', 'merlic_playlist_version', 'merlic_playlist_widget_title');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file');

