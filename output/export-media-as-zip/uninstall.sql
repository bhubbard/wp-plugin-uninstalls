-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emaz_total_files', 'emaz_processed_files', 'emaz_progress', 'emaz_current_file', 'emaz_zip_time');

