-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy-image-gallery');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_easy_image_gallery', '_easy_image_gallery_v2', '_easy_image_gallery_link_images', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_easy_image_gallery', '_easy_image_gallery_v2', '_easy_image_gallery_link_images', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_easy_image_gallery', '_easy_image_gallery_v2', '_easy_image_gallery_link_images', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_easy_image_gallery', '_easy_image_gallery_v2', '_easy_image_gallery_link_images', '_wp_attachment_image_alt');

