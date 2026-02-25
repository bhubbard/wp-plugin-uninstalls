-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sg_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('syron_gallery_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('syron_gallery_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('syron_gallery_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('syron_gallery_images');

