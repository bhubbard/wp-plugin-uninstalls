-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('responsive_gallery_style', 'responsive_image_gallery_images', 'responsive_image_collage', 'responsive_image_photobox');
DELETE FROM wp_usermeta WHERE meta_key IN ('responsive_gallery_style', 'responsive_image_gallery_images', 'responsive_image_collage', 'responsive_image_photobox');
DELETE FROM wp_termmeta WHERE meta_key IN ('responsive_gallery_style', 'responsive_image_gallery_images', 'responsive_image_collage', 'responsive_image_photobox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('responsive_gallery_style', 'responsive_image_gallery_images', 'responsive_image_collage', 'responsive_image_photobox');

