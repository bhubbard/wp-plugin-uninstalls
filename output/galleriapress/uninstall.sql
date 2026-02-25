-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('galleriapress', 'galleriapress_default_gallery');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('galleriapress_items', 'galleriapress_common', 'galleriapress_picasa', 'galleriapress_wp_media', '_wp_attachment_image_alt', 'galleriapress_profile', 'galleriapress_link_profile', 'default_gallery_profile');
DELETE FROM wp_usermeta WHERE meta_key IN ('galleriapress_items', 'galleriapress_common', 'galleriapress_picasa', 'galleriapress_wp_media', '_wp_attachment_image_alt', 'galleriapress_profile', 'galleriapress_link_profile', 'default_gallery_profile');
DELETE FROM wp_termmeta WHERE meta_key IN ('galleriapress_items', 'galleriapress_common', 'galleriapress_picasa', 'galleriapress_wp_media', '_wp_attachment_image_alt', 'galleriapress_profile', 'galleriapress_link_profile', 'default_gallery_profile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('galleriapress_items', 'galleriapress_common', 'galleriapress_picasa', 'galleriapress_wp_media', '_wp_attachment_image_alt', 'galleriapress_profile', 'galleriapress_link_profile', 'default_gallery_profile');

