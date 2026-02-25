-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EasyPhotoAlbum', 'epa_update_fields', 'EasyPhotoAlbumVersion', 'epa_download_count');

