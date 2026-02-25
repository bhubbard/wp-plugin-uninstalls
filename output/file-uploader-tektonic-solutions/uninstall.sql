-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tektonic_file_upload_options', 'tektonic_file_upload_db_version');

