-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpanticpy_prevent_indexes');
DELETE FROM wp_options WHERE option_name LIKE '%_licensed';

