-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cloud_uploads_options', 'cloud_uploads_files_scanned', 'ms_files_rewriting', 'cloud_uploads_apitoken', 'cloud_uploads_site_id', 'cloud_uploads_api_data', 'cloud_uploads_enabled', 'cloud_uploads_bulk_started', 'cloud_uploads_bulk_completed', 'cloud_uploads_deferred', 'cloud_uploads_sizes_deferred');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_s3_synced', '_s3_url', '_wp_attached_file', '_s3_paths');
DELETE FROM wp_usermeta WHERE meta_key IN ('_s3_synced', '_s3_url', '_wp_attached_file', '_s3_paths');
DELETE FROM wp_termmeta WHERE meta_key IN ('_s3_synced', '_s3_url', '_wp_attached_file', '_s3_paths');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_s3_synced', '_s3_url', '_wp_attached_file', '_s3_paths');

