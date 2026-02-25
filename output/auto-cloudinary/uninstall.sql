-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cloudinary_cloud_name', 'cloudinary_auto_mapping_folder', 'cloudinary_default_hard_crop', 'cloudinary_default_soft_crop', 'cloudinary_urls', 'cloudinary_content_images');

