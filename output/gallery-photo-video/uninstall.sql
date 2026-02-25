-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('GPV_Default_Setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('GPV_photos_details', 'GPV_images_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('GPV_photos_details', 'GPV_images_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('GPV_photos_details', 'GPV_images_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('GPV_photos_details', 'GPV_images_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'GPV_custom_setting_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'GPV_custom_setting_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'GPV_custom_setting_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'GPV_custom_setting_%';

