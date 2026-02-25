-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cloud_s3_storage_mime_types', 'cloud_s3_settings', 'cloud_s3_storage_status', 'cloud_s3_storage_cached_file_attach_list', 'cloud_s3_storage_cached_id_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('disable_media_field', 'enable_media_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('disable_media_field', 'enable_media_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('disable_media_field', 'enable_media_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('disable_media_field', 'enable_media_field');

