-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_dont-use-cdn';
DELETE FROM wp_options WHERE option_name LIKE '%_include_query';
DELETE FROM wp_options WHERE option_name LIKE '%_include_external';
DELETE FROM wp_options WHERE option_name LIKE '%_exclude';
DELETE FROM wp_options WHERE option_name LIKE '%_debug';
DELETE FROM wp_options WHERE option_name LIKE '%_admin';

