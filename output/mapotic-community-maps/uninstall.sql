-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%map_url';
DELETE FROM wp_options WHERE option_name LIKE '%height';
DELETE FROM wp_options WHERE option_name LIKE '%width';
DELETE FROM wp_options WHERE option_name LIKE '%zoom';

