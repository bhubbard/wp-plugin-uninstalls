-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookieman_cmp_version');
DELETE FROM wp_options WHERE option_name LIKE '%LogToError';
DELETE FROM wp_options WHERE option_name LIKE '%LogToConsole';

