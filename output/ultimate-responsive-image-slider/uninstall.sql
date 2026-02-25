-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WRIS_Settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ris_all_photos_details', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('ris_all_photos_details', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('ris_all_photos_details', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ris_all_photos_details', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'WRIS_Gallery_Settings_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'WRIS_Gallery_Settings_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'WRIS_Gallery_Settings_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'WRIS_Gallery_Settings_%';

