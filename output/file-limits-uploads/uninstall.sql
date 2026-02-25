-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flu_maximum_execution_time', 'flu_max_file_size_uploads');

