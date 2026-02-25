-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_Validate';
DELETE FROM wp_options WHERE option_name LIKE '%_Activate';
DELETE FROM wp_options WHERE option_name LIKE '%_option';

