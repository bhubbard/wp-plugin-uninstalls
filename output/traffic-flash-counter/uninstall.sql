-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('counter_tfc_name');
DELETE FROM wp_options WHERE option_name LIKE '%_ip_already_exists';

