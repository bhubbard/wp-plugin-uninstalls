-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpsp_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

