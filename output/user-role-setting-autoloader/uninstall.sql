-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usa_import_timestamp', 'usa_import_dir_path', 'usa_import_data');

