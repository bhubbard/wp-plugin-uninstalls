-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_tdata_headername', 'bp_tdata_tablename', 'bp_tdata_columnexclude');

