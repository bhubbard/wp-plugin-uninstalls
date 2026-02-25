-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exclude_script', 'merge_all_script_files', 'minify_script_file', 'script_exclusion_status', 'script_files_in_the_site', 'exclude_style', 'merge_all_style_files', 'minify_style_file', 'style_exclusion_status', 'style_files_in_the_site');

