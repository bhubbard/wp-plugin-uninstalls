-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_db_ver';
DELETE FROM wp_options WHERE option_name LIKE '%_check';

