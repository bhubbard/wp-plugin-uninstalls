-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mui_posttype', 'mui_pages', 'mui_keepvalues', 'mui_postthumb', 'mui_title', 'mui_position', 'mui_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('my_upload_images', '_wp_attachment_image_alt', '_my_upload_images_meta', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('my_upload_images', '_wp_attachment_image_alt', '_my_upload_images_meta', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('my_upload_images', '_wp_attachment_image_alt', '_my_upload_images_meta', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('my_upload_images', '_wp_attachment_image_alt', '_my_upload_images_meta', '_thumbnail_id');

