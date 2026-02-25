-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('illegal_names', 'site_name', 'ms_files_rewriting');

