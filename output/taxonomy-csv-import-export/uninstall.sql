-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('taxocsie_version', 'taxocsie_installed', 'taxoscie_csv_data');

