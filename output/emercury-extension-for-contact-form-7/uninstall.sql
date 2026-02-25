-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'eefcf7_emercury_db_issues_log');
DELETE FROM wp_options WHERE option_name LIKE '%_log';
DELETE FROM wp_options WHERE option_name LIKE 'eefcf7_emercury_%';

