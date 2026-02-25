-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dos_key', 'dos_secret', 'dos_endpoint', 'dos_container', 'dos_storage_path', 'dos_storage_file_only', 'dos_storage_file_delete', 'dos_filter');

