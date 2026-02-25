-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_photogallery_albums', '_photoalbum_thumbnail', '_photoalbum_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('_photogallery_albums', '_photoalbum_thumbnail', '_photoalbum_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('_photogallery_albums', '_photoalbum_thumbnail', '_photoalbum_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_photogallery_albums', '_photoalbum_thumbnail', '_photoalbum_images');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_design';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_design';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_design';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_design';

