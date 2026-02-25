-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('setting_include_files', 'setting_exclude_files', 'wpcag_ltime');

