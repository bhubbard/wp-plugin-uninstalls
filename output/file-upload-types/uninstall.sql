-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('file_upload_types', 'file_upload_types_multiple_mimes');

