-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%URL';
DELETE FROM wp_options WHERE option_name LIKE '%Translation';

