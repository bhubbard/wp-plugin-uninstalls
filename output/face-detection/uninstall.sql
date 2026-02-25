-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('face_detection_upload_enabled');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', 'face_detection_faces');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', 'face_detection_faces');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', 'face_detection_faces');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', 'face_detection_faces');

