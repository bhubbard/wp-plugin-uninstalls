-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aqs_all_photos_details', 'aqs_total_images_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('aqs_all_photos_details', 'aqs_total_images_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('aqs_all_photos_details', 'aqs_total_images_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aqs_all_photos_details', 'aqs_total_images_count');

