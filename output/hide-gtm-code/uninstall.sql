-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hgtmc_gtmcode', 'hgtmc_gsccode', 'hgtmc_gacode');

