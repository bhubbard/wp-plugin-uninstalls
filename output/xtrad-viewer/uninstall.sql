-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xtrad_viewer_db_version', 'xtrad_viewer_lib_version');

