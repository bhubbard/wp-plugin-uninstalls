-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('make_paths_relative_settings', 'make_paths_relative', 'make_paths_relative_exclude');

