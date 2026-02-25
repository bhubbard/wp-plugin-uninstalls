-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eg_has_gallery', '_eg_in_gallery', '_eg_gallery_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eg_has_gallery', '_eg_in_gallery', '_eg_gallery_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eg_has_gallery', '_eg_in_gallery', '_eg_gallery_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eg_has_gallery', '_eg_in_gallery', '_eg_gallery_data');

