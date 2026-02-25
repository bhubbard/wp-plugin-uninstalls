-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%url';
DELETE FROM wp_options WHERE option_name LIKE '%border';
DELETE FROM wp_options WHERE option_name LIKE '%height';
DELETE FROM wp_options WHERE option_name LIKE '%width';
DELETE FROM wp_options WHERE option_name LIKE '%scrolling';
DELETE FROM wp_options WHERE option_name LIKE '%style';

