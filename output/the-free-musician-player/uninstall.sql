-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TFM_flush', 'TFM_Player_enable_ajax', 'TFM_Player_fade', 'TFM_Player_id', 'TFM_Player_menu', 'TFM_Player_playhtml', 'TFM_Player_stophtml', 'TFM_Player_dl', 'TFM_Player_custom_stylesheet');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('track', 'mpeg', 'album', 'available', 'artist', 'order', 'file');
DELETE FROM wp_usermeta WHERE meta_key IN ('track', 'mpeg', 'album', 'available', 'artist', 'order', 'file');
DELETE FROM wp_termmeta WHERE meta_key IN ('track', 'mpeg', 'album', 'available', 'artist', 'order', 'file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('track', 'mpeg', 'album', 'available', 'artist', 'order', 'file');

