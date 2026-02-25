-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kawuda_no_of_rows', 'kawuda_no_of_days');

