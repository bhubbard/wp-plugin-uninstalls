-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-activation';
DELETE FROM wp_options WHERE option_name LIKE '%-ID';
DELETE FROM wp_options WHERE option_name LIKE '%-deactivation';
DELETE FROM wp_options WHERE option_name LIKE '%-debug';

