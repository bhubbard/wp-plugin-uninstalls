-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwscl_submissions_mwscl_keep_data_on_uninstall', 'mwscl_submissions_version', 'mwscl_submissions_db_version');

