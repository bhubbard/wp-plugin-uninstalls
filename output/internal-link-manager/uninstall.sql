-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Internal_Link_Manager-maxuse', 'Internal_Link_Manager-case', 'Internal_Link_Manager-keywords', 'Internal_Link_Manager-metabox');
DELETE FROM wp_options WHERE option_name LIKE '%-acf';
DELETE FROM wp_options WHERE option_name LIKE '%-keywords';
DELETE FROM wp_options WHERE option_name LIKE '%-maxuse';
DELETE FROM wp_options WHERE option_name LIKE '%-case';

