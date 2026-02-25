-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%count';
DELETE FROM wp_options WHERE option_name LIKE '%rows';
DELETE FROM wp_options WHERE option_name LIKE '%orientation';
DELETE FROM wp_options WHERE option_name LIKE '%token';
DELETE FROM wp_options WHERE option_name LIKE '%title';
DELETE FROM wp_options WHERE option_name LIKE '%description';

