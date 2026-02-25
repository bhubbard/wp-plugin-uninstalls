-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filesfence_wp_version', 'filesfence_search_main_files', 'filesfence_create');

