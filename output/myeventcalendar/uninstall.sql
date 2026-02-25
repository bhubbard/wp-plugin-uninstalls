-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mec_settings', 'mec_tables_created');

