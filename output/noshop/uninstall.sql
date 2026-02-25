-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('noshop_db_version', 'noshop_options', 'noshop_selectproduct');

