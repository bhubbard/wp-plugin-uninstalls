-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_publish';
DELETE FROM wp_options WHERE option_name LIKE 'DDSOO_%';

