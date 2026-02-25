-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('photostream_streams');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ps_stream', 'ps_batch_guid', 'ps_photo_guid', 'ps_image_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('ps_stream', 'ps_batch_guid', 'ps_photo_guid', 'ps_image_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('ps_stream', 'ps_batch_guid', 'ps_photo_guid', 'ps_image_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ps_stream', 'ps_batch_guid', 'ps_photo_guid', 'ps_image_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ps_exif_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ps_exif_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ps_exif_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ps_exif_%';

