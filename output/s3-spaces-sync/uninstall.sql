-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s3spaces_key', 's3spaces_secret', 's3spaces_endpoint', 's3spaces_container', 's3spaces_storage_path', 's3spaces_storage_file_only', 's3spaces_storage_file_delete', 's3spaces_filter');

