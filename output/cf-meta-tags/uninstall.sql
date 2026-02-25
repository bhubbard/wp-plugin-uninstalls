-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf_meta_artist', '_cf_meta_song', '_cf_meta_genre', '_cf_meta_tv_term', '_cf_meta_album', '_cf_meta_album_is');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf_meta_artist', '_cf_meta_song', '_cf_meta_genre', '_cf_meta_tv_term', '_cf_meta_album', '_cf_meta_album_is');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf_meta_artist', '_cf_meta_song', '_cf_meta_genre', '_cf_meta_tv_term', '_cf_meta_album', '_cf_meta_album_is');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf_meta_artist', '_cf_meta_song', '_cf_meta_genre', '_cf_meta_tv_term', '_cf_meta_album', '_cf_meta_album_is');

