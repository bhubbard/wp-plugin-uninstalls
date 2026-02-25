-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wrsg_optionsframework');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wrsimplegallery_gallery', 'wrsimplegallery_setcover', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('wrsimplegallery_gallery', 'wrsimplegallery_setcover', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('wrsimplegallery_gallery', 'wrsimplegallery_setcover', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wrsimplegallery_gallery', 'wrsimplegallery_setcover', '_wp_attachment_image_alt');

