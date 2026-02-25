-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imagineDefaultWidth', 'optionImagineThumbnailWidth', 'optionImagineThumbnailRatio', 'optionImagineDefaultGalleryTemplate', 'optionImagineDefaultAlbumTemplate', 'optionImagineDefaultImageTemplate', 'optionImagineDefaultLayoverTemplate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('imagine');
DELETE FROM wp_usermeta WHERE meta_key IN ('imagine');
DELETE FROM wp_termmeta WHERE meta_key IN ('imagine');
DELETE FROM wp_commentmeta WHERE meta_key IN ('imagine');

