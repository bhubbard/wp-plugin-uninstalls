-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('streaming_connect_service', 'BUNNY_LIBRARY_ID', 'BUNNY_ACCESS_KEY', 'amazon_s3_key', 'amazon_s3_secret', 'amazon_s3_region', 'amazon_s3_bucket', 'BUNNY_FILE_UPLOAD_LIMIT', 'AMAZON_FILE_UPLOAD_LIMIT');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('collection_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('collection_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('collection_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('collection_id');

