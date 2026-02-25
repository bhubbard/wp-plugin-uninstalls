-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmc_options', 'health-check-site-status-result', 'wpmc_scanned_files');

