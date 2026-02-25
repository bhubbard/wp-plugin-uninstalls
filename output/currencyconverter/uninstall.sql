-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_rates';
DELETE FROM wp_options WHERE option_name LIKE '%_minimalistic';
DELETE FROM wp_options WHERE option_name LIKE '%_minimalistic_ver2';
DELETE FROM wp_options WHERE option_name LIKE '%_table';

