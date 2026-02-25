-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%allowed_mime_types';
DELETE FROM wp_options WHERE option_name LIKE '%max_upload_size';
DELETE FROM wp_options WHERE option_name LIKE '%forbidden_extensions';

