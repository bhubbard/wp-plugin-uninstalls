-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bddp_options', 'bddp_wgt1', 'bddp_wgt2', 'bddp_wgt3');

